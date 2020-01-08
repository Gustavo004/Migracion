
package Negocio;

import Conecta.Conecta;
import Entidad.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Negocio {
    
    //CRUD CLASE DESTINO
    public void insertaDestino(Destino d){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_ins_dest(?,?,?,?,?)}");

            pst.setString(1,d.getId_des());
            pst.setString(2,d.getCod_dist());
            pst.setString(3,d.getNomb_des());
            pst.setString(4,d.getDir_des());
            pst.setString(5,d.getDescrip_des());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public static ArrayList <Destino>  ListadoDestino() {

        ArrayList <Destino>  lista = new ArrayList <Destino>();
        Connection cnx = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM DESTINO";

            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Destino D = new Destino(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5), rs.getString(6));
                lista.add(D);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Destino.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }

    public void modDestino(Destino d){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_mod_dest(?,?,?,?,?)}");
            
            pst.setString(1,d.getId_des());
            pst.setString(2,d.getCod_dist());
            pst.setString(3,d.getNomb_des());
            pst.setString(4,d.getDir_des());
            pst.setString(5,d.getDescrip_des());
            
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public void eliDestino(Destino d){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_eli_dest(?)}");

            pst.setString(1,d.getId_des());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    
    
    //CRUD CLASE MUSEO
    public void insertaMuseo(Museo m){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_ins_museo(?,?,?,?)}");

            pst.setString(1,m.getId_mus());
            pst.setString(2,m.getId_des());
            pst.setString(3,m.getCosto_mus());
            pst.setString(4,m.getHorario_mus());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public static ArrayList <Museo>  ListadoMuseo() {

        ArrayList <Museo>  lista = new ArrayList <Museo>();
        Connection cnx = null;

        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM MUSEO";

            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Museo M = new Museo(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4));
                lista.add(M);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Museo.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }

    public void modMuseo(Museo m){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_mod_museo(?,?,?,?)}");
            
            pst.setString(1,m.getId_mus());
            pst.setString(2,m.getId_des());
            pst.setString(3,m.getCosto_mus());
            pst.setString(4,m.getHorario_mus());
            
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public void eliMuseo(Museo m){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_eli_museo(?)}");

            pst.setString(1,m.getId_mus());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    
    
    //CRUD CLASE TEATRO
    public void insertaTeatro(Teatro t){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_ins_teatro(?,?)}");

            pst.setString(1,t.getId_tet());
            pst.setString(2,t.getId_des());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public static ArrayList <Teatro>  ListadoTeatro() {

        ArrayList <Teatro>  lista = new ArrayList <Teatro>();
        Connection cnx = null;

        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM TEATRO";

            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Teatro T = new Teatro(rs.getString(1), rs.getString(2));
                lista.add(T);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Teatro.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }

    public void modTeatro(Teatro t){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_mod_teatro(?,?)}");
            
            pst.setString(1,t.getId_tet());
            pst.setString(2,t.getId_des());
            
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }
    
    public void eliTeatro(Teatro t){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_eli_teatro(?)}");

            pst.setString(1,t.getId_tet());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }



    //CRUD CLASE BIBLIOTECA    
    public void insertaBiblioteca(Biblioteca b){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_ins_biblio(?,?,?,?)}");

            pst.setString(1,b.getId_bi());
            pst.setString(2,b.getId_des());
            pst.setString(3,b.getCosto_bi());
            pst.setString(4,b.getHorario_bi());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public static ArrayList <Biblioteca>  ListadoBiblioteca() {

        ArrayList <Biblioteca>  lista = new ArrayList <Biblioteca>();
        Connection cnx = null;

        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM BIBLIOTECA";

            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Biblioteca B = new Biblioteca(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4));
                lista.add(B);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Biblioteca.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }

    public void modBiblioteca(Biblioteca b){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_mod_biblio(?,?,?,?)}");
            
            pst.setString(1,b.getId_bi());
            pst.setString(2,b.getId_des());
            pst.setString(3,b.getCosto_bi());
            pst.setString(4,b.getHorario_bi());
            
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }

    public void eliBiblioteca(Biblioteca b){
        try{
            Connection cnx=Conecta.getConnection();
            PreparedStatement pst=cnx.prepareStatement("{call sp_eli_biblio(?)}");

            pst.setString(1,b.getId_bi());
            pst.executeUpdate();
        }
        catch (SQLException ex){
            System.out.println(ex.getMessage());
        }
    }



    //LISTADO
    public static ArrayList <Distrito>  ListadoDistrito() {

        ArrayList <Distrito>  lista = new ArrayList <Distrito>();
        Connection cnx = null;
        ResultSet rs = null;

        try {
            String sql = "SELECT * FROM DISTRITO";

            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Distrito D = new Distrito(rs.getString(1), rs.getString(2),rs.getString(3));
                lista.add(D);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Distrito.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }
    
    public static ArrayList <Usuario>  ListadoUsuario() {

        ArrayList <Usuario>  lista = new ArrayList <Usuario>();
        

        try {
            String sql = "SELECT * FROM USUARIO";
            Connection cnx = null;
            ResultSet rs = null;
            cnx=Conecta.getConnection();
            Statement statement = cnx.createStatement();
            rs = statement.executeQuery(sql);

            while (rs.next()) {
                Usuario U = new Usuario(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
                lista.add(U);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }
           return lista;
    }    

}
