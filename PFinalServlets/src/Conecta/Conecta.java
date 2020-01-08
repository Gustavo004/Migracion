package Conecta;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conecta {
    public static Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String myDB ="jdbc:sqlserver://localhost;databaseName=Vamos_al_museo";
            String usuario="sa";
            String password="12345678";
            Connection cnx = DriverManager.getConnection(myDB,usuario,password);
            return cnx;
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }catch (ClassNotFoundException ex){
            Logger.getLogger(Conecta.class.getName()).log(Level.SEVERE,null,ex);
        }
        return null;
        }
   }

