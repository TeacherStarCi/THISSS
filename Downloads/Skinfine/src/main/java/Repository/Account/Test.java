/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repository.Account;

import java.sql.SQLException;

/**
 *
 * @author tucuo
 */
public class Test {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(AccountDAO.getAccount("sa1", "123456"));
    }
}
