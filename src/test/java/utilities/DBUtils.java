package utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {
    private final String url = "jdbc:postgresql://sunday-ci-rds.cmbagwipzfnw.ap-southeast-1.rds.amazonaws.com:5432/staging-01";
    private final String user = "sunday_ci";
    private final String password = "sunday_ci123#";

    private Connection connect() {
        Connection conn = null;
        try {
            conn = DriverManager.getConnection(url, user, password);
            System.out.println("Connected to the PostgreSQL server successfully.");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }


}
