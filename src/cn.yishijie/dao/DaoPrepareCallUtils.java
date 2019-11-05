package dao;

import utils.JdbcConnectionUtils;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;

/**
 * @author chenjianhui on 2019/11/05
 */
public class DaoPrepareCallUtils {


    /**
     * 调用自定义函数
     */
    public void callFunction(){
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection =  JdbcConnectionUtils.getConnection();
            //这个一定要加大括号，否则出异常无法返回结果
            callableStatement = connection.prepareCall("{?=call get_sum(?,?)}");
            callableStatement.setInt(2,15);
            callableStatement.setInt(3,20);
            callableStatement.registerOutParameter(1,Types.INTEGER);
            callableStatement.execute();
            System.out.println(callableStatement.getInt(1));
        }catch (Exception e){

        }finally {
            JdbcConnectionUtils.closeStatement(callableStatement);
            JdbcConnectionUtils.closeConnection(connection);
        }
    }


    /**
     * 没有输入和输出(sql的大括号可要可不要)
     */
    public void callProcedure(){
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection =  JdbcConnectionUtils.getConnection();
            callableStatement = connection.prepareCall("call get_all()");
            callableStatement.execute();
            ResultSet  resultSet = callableStatement.getResultSet();
            while (resultSet.next()){
                System.out.println(resultSet.getString("lastName"));
            }
        }catch (Exception e){

        }finally {
            JdbcConnectionUtils.closeStatement(callableStatement);
            JdbcConnectionUtils.closeConnection(connection);
        }
    }

    /**
     * 有输入和输出
     */
     public void callProcedureInOut(){
         Connection connection = null;
         CallableStatement callableStatement = null;
         try {
             connection =  JdbcConnectionUtils.getConnection();
             callableStatement = connection.prepareCall("{call get_byid(?,?)}");
             callableStatement.setInt(1,114);
             callableStatement.registerOutParameter(2, Types.VARCHAR);
             callableStatement.execute();
             //注意是index是二
             String lastName = callableStatement.getString(2);
             System.out.println(lastName);
         }catch (Exception e){

         }finally {
             JdbcConnectionUtils.closeStatement(callableStatement);
             JdbcConnectionUtils.closeConnection(connection);
         }
     }

    /**
     * 只有输入参数，根据输入的id删除相关记录
     */
    public void callProcedureIn(){
        Connection connection = null;
        CallableStatement callableStatement = null;
        try {
            connection =  JdbcConnectionUtils.getConnection();
            callableStatement = connection.prepareCall("{call del_byid(?)}");
            callableStatement.setInt(1,118);
            callableStatement.execute();
        }catch (Exception e){

        }finally {
            JdbcConnectionUtils.closeStatement(callableStatement);
            JdbcConnectionUtils.closeConnection(connection);
        }
    }
}
