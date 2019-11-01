package utils;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

/**
 * @author chenjianhui on 2019/11/01
 */
public class JdbcConnectionUtils {

    public static Connection getConnection(){
        Connection connection = null;
        try {
            Properties properties = new Properties();
            properties.load(new FileInputStream(new File("src/jdbc.properties")));
            String jdbcUrl  = properties.get("jdbc.url").toString();
            String username = properties.get("jdbc.username").toString();
            String password = properties.get("jdbc.password").toString();
            connection =   DriverManager.getConnection(jdbcUrl,username,password);
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        return connection;
    }

    public static void closeConnection(Connection connection){
        if(connection != null){
            try {
                connection.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
    }

    public static void closeStatement(Statement statement){
        if(statement != null){
            try {
                statement.close();
            }catch (Exception e){
                System.out.println(e.getMessage());
            }
        }
    }
}
