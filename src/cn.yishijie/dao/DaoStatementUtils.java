package dao;

import utils.JdbcConnectionUtils;

import java.sql.*;
import java.util.List;

/**
 * @author chenjianhui on 2019/11/01
 */
public class DaoStatementUtils {

    public void update(String sql){
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            statement.executeUpdate(sql);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    /**
     * 执行不同sql语句的批量操作
     */
    public void update0(){
        String sql0 = "update tb_employee tb set tb.firstName = 'cjh1' where tb.id = 99";
        String sql1 = "update tb_employee tb set tb.lastName ='lst1' where tb.id = 100";
        Connection connection = null;
        Statement statement = null;
        try {
            connection = JdbcConnectionUtils.getConnection();
            statement = connection.createStatement();
            statement.addBatch(sql0);
            statement.addBatch(sql1);
            int[] affectRows = statement.executeBatch();
            System.out.println(affectRows);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    /**
     * 插入数据，并且获取生产的主键id
     * @param sql
     * @return
     */
    public int save(String sql){
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            //要返回自增长的键时：Statement.RETURN_GENERATED_KEYS
            statement.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
            ResultSet resultSet = statement.getGeneratedKeys();
            while (resultSet.next()){
                System.out.println(resultSet.getInt(1));
            }
        }catch (Exception e){
            System.out.println(e.getMessage());
        }finally {
            JdbcConnectionUtils.closeStatement(statement);
        }
        return 0;
    }

    /**
     * 查询请求
     * @param sql
     * @return
     */
    public List select(String sql) {
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                System.out.println(name);
                System.out.println(pk);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            JdbcConnectionUtils.closeStatement(statement);
            JdbcConnectionUtils.closeConnection(connection);
        }
        return null;
    }

    /**
     * ResultSet结果分析测试
     * @param sql
     * @return
     */
    public List select1(String sql) {
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            //创建这个statement,指定的ResultSet类型没有用
            statement = connection.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            //System.out.println("row:"+resultSet.getRow());用于打印当前行，默认为0
            while (resultSet.next()) {
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                System.out.println(name);
                System.out.println(pk);
                System.out.println("row:"+resultSet.getRow());
            }
            System.out.println("0-----------");
            resultSet.first();//游标指导第一行
            while (resultSet.next()) {
                //next之后会指到第二行,那么会少了前面一条数据
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                System.out.println(name);
                System.out.println(pk);
                System.out.println("row:"+resultSet.getRow());
            }

            System.out.println("1-----------");
            resultSet.beforeFirst();//游标指导第一行之前
            while (resultSet.next()) {
                //next之后会指到第二行
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                System.out.println(name);
                System.out.println(pk);
                System.out.println("row:"+resultSet.getRow());
            }
            System.out.println("2-----------");
            resultSet.afterLast();//游标指导第一行之前
            while (resultSet.previous()) {
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                System.out.println(name);
                System.out.println(pk);
                System.out.println("row:"+resultSet.getRow());
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            JdbcConnectionUtils.closeStatement(statement);
            JdbcConnectionUtils.closeConnection(connection);
        }
        return null;
    }


    /**
     * ResultSet几个游标特性测试
     * @param sql
     */
    public void select2(String sql){
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            // statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            // TYPE_SCROLL_INSENSITIVE会把记录直接存入缓存中，所有数据库的修改不会完全不会影响到结果集

            // TYPE_SCROLL_SENSITIVE会把数据库的原始rowid存入缓存中，然后拿数据的时候会根据
            // 这个rowid去数据库拿，那么如果时update操作，肯定可以发现时修改了的，但是如果
            // 插入操作，那么因为缓存中没有缓存新插入的数据rowid,那么在那一次肯定不会被返回。
            // 如果时delete的操作，那么因为数据只是的操作只是把记录标记一下，所以这个rowid
            // 还是会把数据的记录给拿出来（所以这个的敏感只是针对更新操作的）
            statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            statement.setFetchSize(1);
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                String name = resultSet.getString("firstName");
                Long pk = resultSet.getLong("id");
                //System.out.println(name);
                System.out.println("pk:"+pk+" name:"+name);
            }
        }catch (Exception e){

        }

    }

    /**
     *查看是否支持各种游标特性，不支持的话，就算设置了也是不起作用的
     */
    public  void testSuport(){
        //查看游标的各种支持情况
        Connection connection = JdbcConnectionUtils.getConnection();
        try {
            DatabaseMetaData dbMeta = connection.getMetaData();

            System.out.println(dbMeta.supportsResultSetType(ResultSet.TYPE_FORWARD_ONLY));//false
            System.out.println(dbMeta.supportsResultSetType(ResultSet.TYPE_SCROLL_SENSITIVE));//false
            System.out.println(dbMeta.supportsResultSetType(ResultSet.TYPE_SCROLL_INSENSITIVE));//true

            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY));//true
            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_UPDATABLE));//true

            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY));//true
            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE));//true

            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY));//false
            System.out.println(dbMeta.supportsResultSetConcurrency(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE));//false

            System.out.println(dbMeta.supportsResultSetHoldability(ResultSet.HOLD_CURSORS_OVER_COMMIT));//true   在事务commit 或rollback 后，ResultSet 仍然可用
            System.out.println(dbMeta.supportsResultSetHoldability(ResultSet.CLOSE_CURSORS_AT_COMMIT));//false  在事务commit 或rollback 后，ResultSet 被关闭
        }catch (Exception e){

        }
    }

    /**
     * 元数据
     */
    public void testMetadata(){
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        String sql = "select * from tb_employee";
        try {
            statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            ResultSetMetaData resultSetMetaData = resultSet.getMetaData();
            System.out.println(resultSetMetaData);
            /**
             *  com.mysql.cj.result.Field@21282ed8[catalog=grafana,tableName=tb_employee,originalTableName=tb_employee,columnName=id,originalColumnName=id,mysqlType=3(FIELD_TYPE_INT UNSIGNED),sqlType=4,flags= AUTO_INCREMENT PRIMARY_KEY UNSIGNED, charsetIndex=63, charsetName=ISO-8859-1]
             * 	com.mysql.cj.result.Field@36916eb0[catalog=grafana,tableName=tb_employee,originalTableName=tb_employee,columnName=firstName,originalColumnName=firstName,mysqlType=253(FIELD_TYPE_VARCHAR),sqlType=12,flags=, charsetIndex=33, charsetName=UTF-8]
             * 	com.mysql.cj.result.Field@7bab3f1a[catalog=grafana,tableName=tb_employee,originalTableName=tb_employee,columnName=lastName,originalColumnName=lastName,mysqlType=253(FIELD_TYPE_VARCHAR),sqlType=12,flags=, charsetIndex=224, charsetName=UTF-8]
             */
        }catch (Exception e){

        }

    }

}
