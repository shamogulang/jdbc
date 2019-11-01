package dao;

import utils.JdbcConnectionUtils;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

/**
 * @author chenjianhui on 2019/11/01
 */
public class DaoUtils<T> {

    public List<T> select(String sql, Class obj) {
        Connection connection = JdbcConnectionUtils.getConnection();
        Statement statement = null;
        try {
            statement = connection.createStatement();
            statement.execute(sql);
            ResultSet resultSet = statement.getResultSet();
            while (resultSet.next()) {
                Object name = resultSet.getObject("name");
                System.out.println(name);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            JdbcConnectionUtils.closeStatement(statement);
            JdbcConnectionUtils.closeConnection(connection);
        }
        return null;
    }
}
