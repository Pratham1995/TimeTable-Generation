package teacher;

import databaseconnection.DatabaseConnection;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;

public class teacherTimeTable extends javax.swing.JFrame {

    public static HashMap<String, String> TeacherNSubject = new HashMap<String, String>();
    public static String user;
    public static DatabaseConnection db;

    public teacherTimeTable(String user) {
        this.user = user;
        initComponents();
        db = new DatabaseConnection();
        db.dbconnection();
        LoadTimeTable();
    }

    public static void LoadTimeTable() {

        String TeacherMat[][] = new String[5][7];
        
        
        
        try {
            GetTeacher();
            jLabel1.setText(user);

            DefaultTableModel model = (DefaultTableModel) timetable.getModel();
            int ColumnCount = model.getColumnCount();
            int RowCount = 0;

            String sql = "SELECT DISTINCT  TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='timetablegeneration'";
            ResultSet rs = db.getResultSet(sql);
            while (rs.next()) {
                RowCount = 0;
                
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
//                                        if (model.getValueAt(RowCount, x - 2) == null) {
                                        model.setValueAt(TotalSubcode[k], RowCount, x - 1);
                                        
                                        TeacherMat[RowCount/2][x - 1]=TotalSubcode[k] ;
                                        x++;
                                        model.setValueAt(TotalSubcode[k], RowCount, x - 1);
                                        TeacherMat[RowCount/2][x - 1]=TotalSubcode[k] ;
//                                        } else {

//                                        }
                                    }
                                }
                            } else {
                                String teacher = TeacherNSubject.get(rs2.getString(metaData.getColumnLabel(x)).trim());
                                if (user.equals(teacher)) {
                                    if (x - 2 <= count) {
                                        if (model.getValueAt(RowCount, x - 2) == null) {
                                            model.setValueAt(rs2.getString(metaData.getColumnLabel(x)), RowCount, x - 2);
                                            System.out.println("RowCount:"+RowCount);
                                              System.out.println("x - 2:"+ (x - 2));
                                            TeacherMat[RowCount/2][x - 2]=rs2.getString(metaData.getColumnLabel(x)) ;
                                        } else {

                                        }
                                    }
                                }
                            }
                        }
                        RowCount = RowCount + 2;
                    }
                }
            }
            PrintMat(TeacherMat);
            setSizeTable();
        } catch (Exception ex) {
            Logger.getLogger(teacherTimeTable.class.getName()).log(Level.SEVERE, null, ex);
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

    public static void setSizeTable() {
        timetable.setAutoResizeMode(timetable.AUTO_RESIZE_OFF);

        System.out.println(timetable.getColumnModel().getColumn(5).getWidth());
        timetable.getColumnModel().getColumn(0).setPreferredWidth(120);
        timetable.getColumnModel().getColumn(1).setPreferredWidth(120);
        timetable.getColumnModel().getColumn(2).setPreferredWidth(120);
        timetable.getColumnModel().getColumn(3).setPreferredWidth(120);
        timetable.getColumnModel().getColumn(4).setPreferredWidth(120);
        timetable.getColumnModel().getColumn(5).setPreferredWidth(300);
        timetable.getColumnModel().getColumn(6).setPreferredWidth(300);
    }

    public static String getTeacher(String subcode, String branch) {

        if (subcode.equals("----") || subcode.contains("||")) {
            return "";
        } else {

            try {
                String sql = "select teacher from demo where class='" + branch + "' and subcode='" + subcode + "'";

                ResultSet rs = db.getResultSet(sql);

                if (rs.next()) {
                    return rs.getString("teacher");
                }
            } catch (SQLException ex) {
                Logger.getLogger(teacherTimeTable.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return null;
    }

    public static String getRandomBranch() {
        try {
            DatabaseConnection db = new DatabaseConnection();
            db.dbconnection();
            ResultSet rs = db.getResultSet("SELECT class FROM time ORDER BY RAND() LIMIT 1");

            if (rs.next()) {
                return rs.getString("class");
            }

        } catch (SQLException ex) {
            Logger.getLogger(teacherTimeTable.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "";
    }

    /**
     * Creates new form GenerateTimeTable
     */
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        timetable = new javax.swing.JTable();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable2 = new javax.swing.JTable();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        timetable.setBackground(new java.awt.Color(255, 255, 102));
        timetable.setFont(new java.awt.Font("Lucida Bright", 1, 14)); // NOI18N
        timetable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null},
                {null, null, null, null, null, null, null}
            },
            new String [] {
                "9.30-10.30", "10.30-11.30", "11.30-12.30", "12.30-1.00", "1.00-2.00", "2.00-3.00", "3.00-4.00"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                true, true, true, false, true, true, true
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        timetable.setRowHeight(50);
        timetable.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                timetableMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(timetable);

        jTable2.setBackground(new java.awt.Color(153, 153, 255));
        jTable2.setFont(new java.awt.Font("Lucida Bright", 1, 18)); // NOI18N
        jTable2.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {"MON"},
                {"TUE"},
                {"WED"},
                {"THU"},
                {"FRI"}
            },
            new String [] {
                "DAY"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jTable2.setRowHeight(100);
        jScrollPane2.setViewportView(jTable2);

        jLabel1.setBackground(new java.awt.Color(255, 255, 102));
        jLabel1.setFont(new java.awt.Font("Lucida Bright", 1, 36)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("jLabel1");

        jLabel2.setFont(new java.awt.Font("Times New Roman", 1, 36)); // NOI18N
        jLabel2.setText("SIES Graduate School of Technology");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 80, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1196, Short.MAX_VALUE)
                        .addGap(91, 91, 91))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 231, Short.MAX_VALUE)
                                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 819, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(0, 0, Short.MAX_VALUE)
                                .addComponent(jLabel2)
                                .addGap(123, 123, 123)))
                        .addGap(323, 323, 323))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 37, Short.MAX_VALUE)
                .addGap(41, 41, 41)
                .addComponent(jLabel1)
                .addGap(35, 35, 35)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 573, Short.MAX_VALUE)
                    .addComponent(jScrollPane2))
                .addContainerGap(22, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    private void timetableMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_timetableMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_timetableMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
//                new teacherTimeTable().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    public static javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable2;
    public static javax.swing.JTable timetable;
    // End of variables declaration//GEN-END:variables
}
