package ra.md4_session5_ex01.repository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/MD04SS05EX01?createDatabaseIfNotExist=true";
    private static final String USER = "root";
    private static final String PASS = "111111";

    static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASS);
        } catch (SQLException | ClassNotFoundException e) {
            throw new ExceptionInInitializerError(e);
        }
        return conn;
    }

    public static void closeConnection(Connection conn, CallableStatement calSt) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        if (calSt != null) {
            try {
                calSt.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
