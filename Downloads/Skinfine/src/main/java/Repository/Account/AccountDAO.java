package Repository.Account;

import Support.DatabaseConnector;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountDAO implements Serializable{
     public static AccountDTO getAccount(String username, String password) throws SQLException, ClassNotFoundException{
    String SQL = "";
        AccountDTO user = null;
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            pre.setString(1, username);
            pre.setString(2, password);
            res = pre.executeQuery();

            while (res.next()) {
               
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
        return user;
}
     
       public static AccountDTO getAccount(String username) throws SQLException, ClassNotFoundException{
    String SQL = "";
        AccountDTO user = null;
        Connection con = null;
        PreparedStatement pre = null;

        ResultSet res = null;
        try {
            con = DatabaseConnector.makeConnection();
            pre = con.prepareStatement(SQL);
            pre.setString(1, username);
            res = pre.executeQuery();

            while (res.next()) {
               
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
        return user;
}
     
}