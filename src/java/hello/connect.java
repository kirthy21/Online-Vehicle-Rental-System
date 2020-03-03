/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hello;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author user
 */
public class connect {
    static Connection con;
    static Statement st;
    static ResultSet rs;
    
    static String db_url="jdbc:mysql://localhost:3306/online_vehicle";
    
    
    public static void setConnection()
    {
        try {
            System.out.println("connecting");
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(db_url, "root" ,"");
            System.out.println("connected");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public static int insertData(String sql)
    {
        int result=0;
        try {
            setConnection();
            st=con.createStatement();
            System.out.println(sql);
            result = st.executeUpdate(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
        
    }
    public static ResultSet getData(String sql)
    {
        
        
        try {
            setConnection();
            st=con.createStatement();
            System.out.println(sql);
            rs=st.executeQuery(sql);
            
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
           
        }
       return (rs==null? null: rs);
       
    }
    
    public static void closeConnection(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 public static String getSaltString() {
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 10) {
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
    
    
}
