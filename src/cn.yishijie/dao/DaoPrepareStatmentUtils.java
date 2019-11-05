package dao;

import utils.JdbcConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * @author chenjianhui on 2019/11/05
 */
public class DaoPrepareStatmentUtils {

    /**
     * 使用占位符获取记录
     */
    public void select(){
        //使用占位符进行获取数据
        String sql = "select * from  tb_employee where id = ?";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = JdbcConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1,99);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                System.out.println(resultSet.getInt(1));
                System.out.println(resultSet.getString(2));
                System.out.println(resultSet.getString(3));
            }
        }catch (Exception e){

        }
    }

    public void update(){
        String sql0 = "update tb_employee tb set tb.firstName = ? where tb.id = ?";
        String sql1 = "update tb_employee tb set tb.lastName ='lst1xx' where tb.id = 100";
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = JdbcConnectionUtils.getConnection();
            statement = connection.prepareStatement(sql0);
            statement.setString(1,"cjhxx");
            statement.setInt(2,99);
            statement.addBatch();
            //statement.setString(1,"lst");
            //statement.setInt(2,100);
            statement.addBatch(sql1);
            int[] affectRows = statement.executeBatch();
            System.out.println(affectRows);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}
