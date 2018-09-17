package datamanager;

import databaseconnection.DatabaseConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class datamanager {

    public static void main(String[] args) {
        try {
            DatabaseConnection db = new DatabaseConnection();
            db.dbconnection();

            ResultSet rs = db.getResultSet("select * from `timetable2`.`all_containts`");

            while (rs.next()) {

                if (rs.getString("branch").equals("IT")) {
                    db.getUpdate("insert into `timetablegeneration`.`all_containts`(`branch`,`subject`,`subcode`,`sem`,`lec1_prac0`,`id`) "
                            + "values ( '" + rs.getString("branch") + "','" + rs.getString("subject") + "','" + rs.getString("subcode") + "','" + rs.getString("sem") + "','" + rs.getString("lec1_prac0") + "','0');");

                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(datamanager.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
