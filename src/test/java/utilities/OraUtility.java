package utilities;

import java.sql.*;


public class OraUtility {
    private final String url = "jdbc:oracle:thin:@localhost:1521:test01";
    private final String user = "c##mot";
    private final String password = "motor9";

    public Connection OracleConn(){



        try (
                Connection conn = DriverManager.getConnection(url, user, password)) {

            if (conn != null) {
                System.out.println("Connected to the database!");


                Statement stmt = conn.createStatement();
                ResultSet rs=stmt.executeQuery("select * from car_make");
                while(rs.next())
                    System.out.println(rs.getInt("ID")+"  "+rs.getString("MAKER_NAME"));


                return conn;
            } else {
                System.out.println("Failed to make connection!");
                return null;
            }




        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }


}
