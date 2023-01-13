/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author igust
 */
public class Koneksi {
    static Connection conn;
    public static Connection getConnetion(){
        try{
                conn = DriverManager.getConnection("jdbc:mysql://localhost/absensi_pegawai", "root", "");
        } catch(Exception e) {
                System.out.println(e.toString());
        }   
        return conn;
    }   

    
}
