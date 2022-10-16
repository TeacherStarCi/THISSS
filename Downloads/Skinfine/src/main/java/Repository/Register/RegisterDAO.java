package Repository.Register;

import Support.DatabaseConnector;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RegisterDAO {

    public static boolean addRegister(String skinType, String guestFirstName, String guestLastName, String phoneNumber, String timeZone, Date contactDate) throws SQLException, ClassNotFoundException {
        String SQL = "INSERT INTO Register (RegisterID, GuestFirstName, GuestLastName, GuestPhoneNumber, SkinType, ContactTimeZone, ContactDate)\n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            pre.setString(1, getNextID());
            pre.setString(2, skinType);
            pre.setString(3, guestFirstName);
            pre.setString(4, guestLastName);
            pre.setString(5, phoneNumber);
            pre.setString(6, timeZone);
            pre.setDate(7, contactDate);
            int affectedRow = pre.executeUpdate();
            if (affectedRow > 0) {
                flag = true;
            }
        } catch (SQLException ex) {
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return flag;
    }

    public static boolean addSkinProblem(String registerID, String skinProblem) throws SQLException, ClassNotFoundException {
        String SQL = "INSERT INTO SkinProblemDetail(RegisterID, SkinProblem)\n"
                + "VALUES (?, ?)";

        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            pre.setString(1, registerID);
            pre.setString(2, skinProblem);

            int affectedRow = pre.executeUpdate();
            if (affectedRow > 0) {
                flag = true;
            }
        } catch (SQLException ex) {
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return flag;
    }

     public static boolean deleteRegister(String registerID) throws SQLException, ClassNotFoundException {
        String SQL = "DELETE FROM Register WHERE RegisterID = ? ";
        boolean flag = false;
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            if (con != null) {
                pre = con.prepareStatement(SQL);
                pre.setString(1, registerID);
                int affectedRow = pre.executeUpdate();
                if (affectedRow > 0) {
                    flag = true;
                }
            }
        } catch (SQLException ex) {
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return flag;
    }
    
    
    
    public static List<String> getRegisterID() throws SQLException, ClassNotFoundException {
        String SQL = "SELECT RegisterID FROM Register";

        List<String> IDs = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            res = pre.executeQuery();

            while (res.next()) {
                String ID = res.getString("RegisterID");
                IDs.add(ID);
            }
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return IDs;

    }

    public static String getNextID() throws SQLException, ClassNotFoundException {
        List<Integer> parseIDs = new ArrayList<>();
        if (getRegisterID().isEmpty()) {
            return "R001";
        }
        for (String str : getRegisterID()) {
            parseIDs.add(Integer.valueOf(str.substring(1).trim()));
        }

        int runPointer = 1;
        boolean flag;
        do {
            flag = false;
            for (int i : parseIDs) {
                if (i == runPointer) {
                    runPointer++;
                    flag = true;
                }
            }
        } while (flag);

        String afterNumb;
        if (runPointer >= 1 && runPointer <= 9) {
            afterNumb = "00" + runPointer;
        } else if (runPointer >= 10 && runPointer <= 99) {
            afterNumb = "0" + runPointer;
        } else {
            afterNumb = String.valueOf(runPointer);
        }
        return "R" + afterNumb;
    }

    public static List<RegisterDTO> getRegisters() throws SQLException, ClassNotFoundException {
        String SQLRegister = "SELECT * FROM Register";
        String SQLSkinProblem = "SELECT * FROM SkinProblemDetail\n"
                + "WHERE RegisterID = ?";
        List<RegisterDTO> registers = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        PreparedStatement pre2 = null;
        ResultSet res = null;
        ResultSet res2 = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQLRegister);
            res = pre.executeQuery();

            while (res.next()) {
                String registerID = res.getString("RegisterID");
                String guestFirstName = res.getString("GuestFirstName");
                String guestLastName = res.getString("GuestLastName");
                String guestPhoneNumber = res.getString("GuestPhoneNumber");
                String skinType = res.getString("SkinType");
                String contactTimeZone = res.getString("ContactTimeZone");
                Date contactDate = res.getDate("ContactDate");
                List<String> skinProblems = new ArrayList<>();
                pre2 = con.prepareStatement(SQLSkinProblem);
                pre2.setString(1, registerID);
                res2 = pre2.executeQuery();
                while (res2.next()) {
                    String skinProblem = res2.getString("SkinProblem");
                    skinProblems.add(skinProblem);
                }
                RegisterDTO register = new RegisterDTO(registerID, skinType, skinProblems, guestFirstName, guestLastName, guestPhoneNumber, contactTimeZone, contactDate);
                registers.add(register);
                
            }
        } finally {
            if (con != null) {
                con.close();
            }

            if (pre != null) {
                pre.close();
            }

            if (res != null) {
                res.close();
            }

        }
        return  registers;

    }

}
