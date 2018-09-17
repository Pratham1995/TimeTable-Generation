package Generate;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import databaseconnection.DatabaseConnection;

public class demo {

    public static HashMap<String, String> TeacherNSubject = new HashMap<String, String>();
    public static String[] day = {"Mon", "Tue", "Wed", "Thurs", "Fri"};
    public static double time[] = {9.30, 10.30, 11.30, 1.00, 2.00, 3.00, 4.00};

    public static void main(String args[]) throws Exception {
        HashMap<String, String[][]> map = new HashMap<String, String[][]>();
        int lecCount = 6;
        int BachCount = 4;
        ArrayList<String> PracticalSub = new ArrayList<String>();

        DatabaseConnection db = new DatabaseConnection();
        db.dbconnection();
        ResultSet rs = db.getResultSet("select distinct class from demo ");
        while (rs.next()) {
            String[][] a = new String[6][8];
            a[0][0] = "days";
            for (int i = 0; i < day.length; i++) {
                a[i + 1][0] = day[i];
            }
            for (int i = 0; i < time.length; i++) {
                a[0][i + 1] = "" + time[i] + "0-" + (time[i] + 1) + "0";
            }
            PrintMat(a);
            // ////////////////Load Pracical Time////////////////////////
            ResultSet rs1 = db
                    .getResultSet("select practical  from time where class='"
                            + rs.getString("class") + "'");
            String practical = "";
            if (rs1.next()) {
                practical = rs1.getString("practical");
            }
            // ////////////////SetPracicals////////////////////////

//            for (int i = 0; i < time.length; i++) {
//                if (a[0][i].startsWith(practical)) {
//                    // for(int k = 0;k<BachCount;k++){
//
//                    for (int x = 0; x < day.length; x++) {
//                        String subject = "";
//                        if(x==0){
//                            
//                        }else{
//                            moveup(PracticalSub);
//                        }
//                        for (int j = 0; j < PracticalSub.size(); j++) {
//
//                           
//
//                        }
//                        System.out.println(subject);
//                    }
//                }
//            }
            ///////////////////setting Lectures/////////////////////////////
            rs1 = db.getResultSet("select *  from Demo where class='" + rs.getString("class") + "'");
            while (rs1.next()) {
                int inserted = 0;
                String lecture = rs1.getString("subcode");
                int practicalIndex = 0;

                for (int j = 0; j <= day.length; j++) {
                    for (int i = 0; i <= time.length; i++) {
                        if (a[0][i].startsWith(practical)) {
                            practicalIndex = i + 1;
                        } else if (practicalIndex == (i + 1) || practicalIndex == i && practicalIndex != 0) {
//                            System.out.println("a[j][i]: "+a[0][i]);
//                           a[j][i]="Prac";
//                           a[j][i+1]="Prac";
                        } else {
//                             System.out.println("a[j][i]: "+a[j][i]);
                            if (a[j][i] == null && inserted < lecCount) {

                                a[j][i] = lecture;
                                inserted++;
                            }

                        }
                    }
                }
            }
            PrintMat(a);
            map.put(rs.getString("class"), a);
            ////////////////////////////Mtrix Creation Done////////////////////////////////
            for (Map.Entry<String, String[][]> entry : map.entrySet()) {
                String key = entry.getKey();
                String[][] value = entry.getValue();
                // ...
                rs1 = db
                        .getResultSet("select practical  from time where class='"
                                + key + "'");
                practical = "";
                if (rs1.next()) {
                    practical = rs1.getString("practical");
                }
                int practicalIndex = 0;
                for (int j = 0; j <= day.length; j++) {
                    for (int i = 0; i <= time.length; i++) {
                        if (value[0][i].startsWith(practical)) {
                            practicalIndex = i + 1;
                        } else if (practicalIndex == (i + 1) || practicalIndex == i && practicalIndex != 0) {
//                            System.out.println("a[j][i]: "+a[0][i]);
//                           a[j][i]="Prac";
//                           a[j][i+1]="Prac";
                        } else {
//                             System.out.println("a[j][i]: "+a[j][i]);
                            if (value[j][i] == null) {

                                value[j][i] = "----";

                            }

                        }
                    }
                }

                map.put(key, value);

            }

            ////////////////////////////////Practival Value Insertion////////////////////////////////
            for (Map.Entry<String, String[][]> entry : map.entrySet()) {
                String key = entry.getKey();
                String[][] value = entry.getValue();
                PracticalSub.clear();
                PracticalSub.clone();
                rs1 = db.getResultSet("select *  from Demo where practical='1' and class='"
                        + key + "'");
                while (rs1.next()) {
//                    for (int i = 0; i < BachCount; i++) {
                    PracticalSub.add(rs1.getString("subcode"));
//                    }

                }
                System.out.println("PracticalSub: " + PracticalSub);
                rs1 = db
                        .getResultSet("select practical  from time where class='" + key + "'");
                practical = "";
                if (rs1.next()) {
                    practical = rs1.getString("practical");
                }
                int practicalIndex = 0;

                for (int j = 0; j <= day.length; j++) {
                    for (int i = 0; i <= time.length; i++) {
                        if (value[j][i] == null) {
                            String subject = "";
//                            for (int k = 0; k < PracticalSub.size(); k++) {
//                                subject = subject + "||" + PracticalSub.get(k) + "B" + (k + 1);
//                            }

                            for (int k = 0; k < BachCount; k++) {
                                if (PracticalSub.size() > k) {
                                    subject = subject + "||" + PracticalSub.get(k) + "B" + (k + 1);
                                }

                            }
                            String first = PracticalSub.get(0);
                            PracticalSub.remove(first);
                            PracticalSub.add(first);
                            value[j][i] = subject.substring(2, subject.length());
                            value[j][i + 1] = subject.substring(2, subject.length());
                        }
                    }
                }
                PrintMat(value, key);
                map.put(key, value);
            }
        }
        //////////////////////////////////////Itration///////////////////////////////
        ArrayList<String> practicalLoaded = new ArrayList<String>();
        for (Map.Entry<String, String[][]> entry : map.entrySet()) {
            practicalLoaded.clear();
            practicalLoaded.clone();
            String key = entry.getKey();
            String[][] value = entry.getValue();
            PracticalSub.clear();
            PracticalSub.clone();
            ResultSet rs1 = db.getResultSet("select *  from Demo where practical='1' and class='" + key + "'");
            if (rs1.next()) {
//                    for (int i = 0; i < BachCount; i++) {
                PracticalSub.add(rs1.getString("subcode"));
//                    }

            }
            System.out.println("PracticalSub: " + PracticalSub);
            rs1 = db
                    .getResultSet("select practical  from time where class='"
                            + key + "'");
            String practical = "";
            if (rs1.next()) {
                practical = rs1.getString("practical");
            }
            int practicalIndex = 0;

            for (int j = 0; j <= day.length; j++) {
                for (int i = 0; i <= time.length; i++) {
                    if (value[0][i].startsWith(practical)) {
                        if (practicalLoaded.contains(value[j][i])) {
                            value[j][i] = "----";
                            value[j][i + 1] = "----";
                        } else {
                            practicalLoaded.add(value[j][i]);
                        }
                        practicalIndex = i + 1;
                    } else if (practicalIndex == (i + 1) || practicalIndex == i && practicalIndex != 0) {

                    } else {
                        if (value[j][i] == null) {
                            value[j][i] = "----";
                        }

                    }
                }
//                PrintMat(value,key);
                map.put(key, value);
            }
        }
        //////////////////////////////Testing/////////////////////////
        for (Map.Entry<String, String[][]> entry : map.entrySet()) {
            practicalLoaded.clear();
            practicalLoaded.clone();
            String key = entry.getKey();
            String[][] value = entry.getValue();
            PrintMat(value, key);
        }
        ////////////////////////Remove Tripple Lectures///////////////
        for (Map.Entry<String, String[][]> entry : map.entrySet()) {
            practicalLoaded.clear();
            practicalLoaded.clone();
            String key = entry.getKey();
            String[][] value = entry.getValue();
            String last = "";
            for (int j = 1; j <= day.length; j++) {
                for (int i = 1; i <= time.length; i++) {
                    if (value[j][i].contains(("B1")) || value[j][i].contains(("B2")) || value[j][i].contains(("B3")) || value[j][i].contains(("B4"))) {

                    } else {
                        if (value[j][i].contains(last)) {
                            boolean itration = false;

                            while (!itration) {
                                int dayint = Randome(1, day.length - 1);
                                int timeint = Randome(1, time.length - 1);
                                String suffel1 = value[dayint][timeint];
                                if (suffel1.contains(("B1")) || suffel1.contains(("B2")) || suffel1.contains(("B3")) || suffel1.contains(("B4"))) {

                                } else {
                                    value[dayint][timeint] = value[j][i];
                                    value[j][i] = suffel1;
                                    itration = true;
                                }

                            }

                        }
                        last = value[j][i];
                    }
                }
            }

//            PrintMat(value, key);
            map.put(key, value);
        }
        //////////////////////////////////Matrix To Matrix Test//////////////////////////////////
        GetTeacher();
//        boolean finalOp = false;
        int loop = 0;
        while (loop < 50) {
            System.out.println("loop:" + loop);
            loop++;
//            finalOp = true;
            for (Map.Entry<String, String[][]> entry : map.entrySet()) {
                String key = entry.getKey();
                String[][] value = entry.getValue();
                for (Map.Entry<String, String[][]> entry2 : map.entrySet()) {
                    String key2 = entry2.getKey();
                    String[][] value2 = entry2.getValue();
                    for (int j = 1; j <= day.length; j++) {
                        for (int i = 1; i <= time.length; i++) {
                            if (value[j][i].contains(("B1")) || value[j][i].contains(("B2")) || value[j][i].contains(("B3")) || value[j][i].contains(("B4"))) {
                                String TotalSubcode[] = value[j][i].split("\\|");
                                for (int k = 0; k < TotalSubcode.length; k++) {

                                    if (!(TotalSubcode[k].equals(""))) {
                                        String subcode = TotalSubcode[k].trim();
                                        subcode = subcode.replaceAll("\\s+", "");
//                                        subcode = TotalSubcode[k].replaceAll(" ","").substring(0, TotalSubcode[k].length() - 2);
                                        String subcodeTeacher1 = TeacherNSubject.get(subcode);

                                        for (int l = 0; l < TotalSubcode.length; l++) {

                                            if (!(TotalSubcode[l].trim().equals(""))) {
                                                String subcodeTocompare = TotalSubcode[l].trim();
                                                subcodeTocompare = subcodeTocompare.replaceAll("\\s+", "");
//                                                subcodeTocompare = TotalSubcode[l].substring(0, TotalSubcode[l].length() - 2);

                                                String subcodeTeacher2 = TeacherNSubject.get(subcodeTocompare);
                                                System.out.println("subcodeTeacher1: " + subcodeTeacher1 + " subcodeTocompare:" + subcode);
                                                System.out.println("subcodeTeacher2: " + subcodeTeacher2 + " subcodeTocompare:" + subcodeTocompare);
                                                if (subcodeTeacher1.equals(subcodeTeacher2)) {
//                                             finalOp = false;
                                                    boolean itration = true;
                                                    while (!itration) {
                                                        System.out.println("in this");
                                                        int dayint = Randome(1, day.length - 1);
                                                        int timeint = Randome(1, time.length - 1);
                                                        String suffel1 = value2[dayint][timeint];
                                                        if (suffel1.contains(("B1")) || suffel1.contains(("B2")) || suffel1.contains(("B3")) || suffel1.contains(("B4"))) {

                                                        } else {
                                                            value2[dayint][timeint] = value2[j][i];
                                                            value2[j][i] = suffel1;
                                                            if (value2[j][i].equals("----")) {
                                                                itration = true;
                                                            } else if (TeacherNSubject.get(value2[j][i]).equals(subcodeTeacher1)) {

                                                            } else {
                                                                itration = true;
                                                            }

                                                        }

                                                    }
                                                }

                                            }

                                        }

//                                        String subcodeTeacher2 = TeacherNSubject.get(value2[j][i]);
//                                        boolean itration = false;
//                                        if (subcodeTeacher1.equals(subcodeTeacher2)) {
////                                             finalOp = false;
//                                            while (!itration) {
//                                                int dayint = Randome(1, day.length - 1);
//                                                int timeint = Randome(1, time.length - 1);
//                                                String suffel1 = value2[dayint][timeint];
//                                                if (suffel1.contains(("B1")) || suffel1.contains(("B2")) || suffel1.contains(("B3")) || suffel1.contains(("B4"))) {
//
//                                                } else {
//                                                    value2[dayint][timeint] = value2[j][i];
//                                                    value2[j][i] = suffel1;
//                                                    if (TeacherNSubject.get(value2[j][i]).equals(subcodeTeacher1)) {
//
//                                                    } else {
//                                                        itration = true;
//                                                    }
//
//                                                }
//
//                                            }
//                                        }
                                    }
                                }
                            } else {
                                String subcodeTeacher1 = "";
                                if (value[j][i].equals("----")) {
                                    subcodeTeacher1 = "";
                                } else {
                                    subcodeTeacher1 = TeacherNSubject.get(value[j][i]);
                                }

                                String subcodeTeacher2 = "";
                                if (value2[j][i].equals("----")) {
                                    subcodeTeacher2 = "";
                                } else {
                                    subcodeTeacher2 = TeacherNSubject.get(value[j][i]);
                                }
//                                subcodeTeacher1 = TeacherNSubject.get(value[j][i]);
//                                subcodeTeacher2 = TeacherNSubject.get(value2[j][i]);
                                boolean itration = false;
                                if (subcodeTeacher1.equals(subcodeTeacher2)) {
                                    while (!itration) {
                                        System.out.println("in this");
                                        int dayint = Randome(1, day.length - 1);
                                        int timeint = Randome(1, time.length - 1);
                                        String suffel1 = value[dayint][timeint];
                                        if (suffel1.contains(("B1")) || suffel1.contains(("B2")) || suffel1.contains(("B3")) || suffel1.contains(("B4"))) {

                                        } else {

                                            if (value[dayint][timeint].equals("----")) {
                                                subcodeTeacher1 = "";
                                            } else {
                                                subcodeTeacher1 = TeacherNSubject.get(value[dayint][timeint]);
                                            }

                                            System.out.println("subcodeTeacher1: " + subcodeTeacher1 + " sub:" + value[dayint][timeint]);
                                            System.out.println("subcodeTeacher2: " + subcodeTeacher2 + " sub:" + value[j][i]);

                                            if (subcodeTeacher1.equals(subcodeTeacher2)) {

                                            } else {
                                                value[dayint][timeint] = value[j][i];
                                                value[j][i] = suffel1;
                                                subcodeTeacher1 = "";
                                                itration = true;
                                            }

//                                            System.out.println("suffel1: " + suffel1 + " ");
                                        }

                                    }
                                }
                            }
                        }
                    }
                    map.put(key2, value2);
                }
                map.put(key, value);
            }
        }
        Testing(map);
        for (Map.Entry<String, String[][]> entry : map.entrySet()) {
            String key = entry.getKey();
            String[][] value = entry.getValue();
            PrintMat(value, key);
        }
        System.out.println("Done");
    }

    public static void PrintMat(String[][] args, String key) {

        System.out.println(key);
        for (String[] arr : args) {
            System.out.println(Arrays.toString(arr));
        }
    }

    public static void PrintMat(String[][] args) {

        for (String[] arr : args) {
            System.out.println(Arrays.toString(arr));
        }
    }

    public static int Randome(int from, int to) {
        int max = to;
        int min = from;
        int diff = max - min;
        Random rn = new Random();
        int i = rn.nextInt(diff + 1);
        i += min;
//        System.out.print("The Random Number is " + i);
        return i;
    }

    public static String GetSubCode(String args) {
        args = args.substring(0, args.length() - 3);

        return args;

    }

    public static void Testing(HashMap<String, String[][]> map) throws Exception {
        DatabaseConnection db = new DatabaseConnection();
        db.dbconnection();

        for (Map.Entry<String, String[][]> entry : map.entrySet()) {
            String key = entry.getKey();
            String[][] value = entry.getValue();
            db.getUpdate("DROP TABLE IF EXISTS " + key + "");
//             db.getUpdate("Create TABLE " + key + " ");
            String create = "CREATE TABLE " + key + " (";
            for (int i = 0; i <= time.length; i++) {
                create = create + "`" + value[0][i] + "` varchar(255),";
            }
            create = create.substring(0, create.length() - 1) + ")";
//            System.out.println(create);
            db.getUpdate(create);

            for (int j = 1; j <= day.length; j++) {
                create = "insert into " + key + " values(";
                for (int i = 0; i <= time.length; i++) {

                    if (key.endsWith("8") && i == 1) {
                        value[j][i] = "Project";
                    }
                    if (value[j][i].contains(("B1")) || value[j][i].contains(("B2")) || value[j][i].contains(("B3")) || value[j][i].contains(("B4"))) {
                        String TotalSubcode[] = value[j][i].split("\\|");
                        String code = "";
                        for (int k = 0; k < TotalSubcode.length; k++) {

                            if (!(TotalSubcode[k].equals(""))) {
                                String subcode = TotalSubcode[k].substring(0, TotalSubcode[k].length() - 2);
                                ResultSet rs = db.getResultSet("select subject,subcode from all_containts where subcode='" + TotalSubcode[k] + "'");
                                if (rs.next()) {
                                    if (TotalSubcode[k].endsWith("B1")) {
                                        code = code + rs.getString("subcode") + "B1||";
                                    } else if (TotalSubcode[k].endsWith("B2")) {
                                        code = code + rs.getString("subcode") + "B2||";
                                    } else if (TotalSubcode[k].endsWith("B3")) {
                                        code = code + rs.getString("subcode") + "B3||";
                                    } else if (TotalSubcode[k].endsWith("B4")) {
                                        code = code + rs.getString("subcode") + "B4||";
                                    } else if (TotalSubcode[k].endsWith("B5")) {
                                        code = code + rs.getString("subcode") + "B5||";
                                    } else if (TotalSubcode[k].endsWith("B6")) {
                                        code = code + rs.getString("subcode") + "B6||";
                                    }

                                }
                            }
                        }
                        create = create + "'" + value[j][i] + "',";
                    } else {
                        ResultSet rs = db.getResultSet("select subject,subcode from all_containts where subcode='" + value[j][i] + "'");
                        if (rs.next()) {

                            value[j][i] = rs.getString("subcode");

                        }

                        create = create + "'" + value[j][i] + "',";
                    }

                }
                create = create.substring(0, create.length() - 1) + ")";
                db.getUpdate(create);
            }
        }
        db.closeConnection(db);

    }

    public static ArrayList moveup(ArrayList<String> data) {
        String toMoveUp = "3";
        while (data.indexOf(toMoveUp) != 0) {
            int i = data.indexOf(toMoveUp);
            Collections.swap(data, i, i - 1);
        }
        System.out.println(data);
        return data;
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
