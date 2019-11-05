package dao;

import utils.JdbcConnectionUtils;

import java.sql.Connection;
import java.sql.Statement;

/**
 * @author chenjianhui on 2019/11/05
 */
public class DaoTransactionUtils {

    /**
     * 测试事务
     */
    public void update(){
        Connection connection = null;
        Statement statement = null;
        try {
            connection = JdbcConnectionUtils.getConnection();
            connection.setAutoCommit(false);
            statement = connection.createStatement();
            statement.executeUpdate("update tb_employee tb set tb.firstName = 'jeffchan1' where tb.id = 99");
            int i = 10/0;//为了使更新操作产生异常，测试事务
            statement.executeUpdate("update tb_employee tb set tb.firstName = 'jeffchan1' where tb.id = 100");
            connection.commit();
        }catch (Exception e){
            System.out.println(e.getMessage());
            try {
                connection.rollback();
            }catch (Exception e0){
                System.out.println(e0.getMessage());
            }
        }finally {
            JdbcConnectionUtils.closeStatement(statement);
            JdbcConnectionUtils.closeConnection(connection);
        }
    }
}
