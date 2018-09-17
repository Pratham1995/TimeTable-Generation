package teacher;

import static Generate.Parser.day;
import static Generate.Parser.time;
import databaseconnection.DatabaseConnection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Arrays;
import java.util.HashMap;

public class TeacherTime {

    public static String user = "f";
    public static HashMap<String, String> TeacherNSubject = new HashMap<String, String>();

    public static void main(String[] args) {
        String TeacherMat[][] = new String[6][8];
        String[] day = {"Mon", "Tue", "Wed", "Thurs", "Fri"};
        double time[] = {9.30, 10.30, 11.30, 1.00, 2.00, 3.00, 4.00};

        for (int i = 0; i < day.length; i++) {
                TeacherMat[i + 1][0] = day[i];
            }
            for (int i = 0; i < time.length; i++) {
                TeacherMat[0][i + 1] = "" + time[i] + "0-" + (time[i] + 1) + "0";
            }
        
        
        try {
            DatabaseConnection db = new DatabaseConnection();
            db.dbconnection();
            GetTeacher();

            int ColumnCount = 7;
            int RowCount = 0;

            String sql = "SELECT DISTINCT  TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='timetablegeneration'";
            ResultSet rs = db.getResultSet(sql);
            while (rs.next()) {
                RowCount = 1;

                String TABLE_NAME = rs.getString("TABLE_NAME");
                if (TABLE_NAME.equals("all_containts") || TABLE_NAME.equals("classrooms") || TABLE_NAME.equals("demo")
                        || TABLE_NAME.equals("login")
                        || TABLE_NAME.equals("sample") || TABLE_NAME.equals("practical") || TABLE_NAME.equals("time") || TABLE_NAME.equals("user")) {

                } else {

                    String sql2 = "select * from " + TABLE_NAME;
                    ResultSet rs2 = db.getResultSet(sql2);
                    ResultSetMetaData metaData = rs2.getMetaData();
                    int count = metaData.getColumnCount(); //number of column
                    while (rs2.next()) {
                        for (int x = 2; x <= count; x++) {

                            if (rs2.getString(metaData.getColumnLabel(x)).toString().trim().contains("||")) {
                                String TotalSubcode[] = rs2.getString(metaData.getColumnLabel(x)).toString().trim().split("\\|");
                                for (int k = 0; k < TotalSubcode.length; k++) {
                                    System.out.println(TotalSubcode[k]);
                                    String teacher = TeacherNSubject.get(TotalSubcode[k].trim());
                                    if (user.equals(teacher)) {
                                        TeacherMat[RowCount][x] = TotalSubcode[k];
                                        x++;
                                        TeacherMat[RowCount][x] = TotalSubcode[k];
                                    }
                                }
                            } else {
                                String teacher = TeacherNSubject.get(rs2.getString(metaData.getColumnLabel(x)).trim());
                                if (user.equals(teacher)) {
                                    if (x - 2 <= count) {
                                        if (TeacherMat[RowCount][x - 1] == null) {

                                            System.out.println("RowCount:" + RowCount);
                                            System.out.println("x - 2:" + (x - 2));
                                            TeacherMat[RowCount][x-1] = rs2.getString(metaData.getColumnLabel(x));
                                        } else {

                                        }
                                    }
                                }
                            }
                        }
                        RowCount = RowCount + 1;
                    }
                }
            }
            PrintMat(TeacherMat);
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }

    public static void PrintMat(String[][] args) {
        for (String[] arr : args) {
            System.out.println(Arrays.toString(arr));
        }
    }

    public static void GetTeacher() throws Exception {
        DatabaseConnection db = new DatabaseConnection();
        db.dbconnection();
        ResultSet rs = db.getResultSet("select * from demo");
        while (rs.next()) {
            TeacherNSubject.put(rs.getString("subcode"), rs.getString("teacher"));
        }

        rs = db.getResultSet("select * from practical");
        while (rs.next()) {
            TeacherNSubject.put(rs.getString("subcode"), rs.getString("teacher"));
        }

        db.closeConnection(db);

    }
}
