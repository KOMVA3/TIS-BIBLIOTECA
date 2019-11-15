/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Libro;

/**
 *
 * @author edwin
 */
public class LibroDAO {
  /*  public static boolean registrar(Libro l){//metodo que registra

        try {
            String SQL="INSERT INTO libro(isbn, titulo ,descripcion ,autor ,fecha_publicacion,codigo_categoria, nit_editorial  ) values(?,?,?,?,?,?,?);";
            Connection con=Conexion.conectar();  //variable tipo Connection
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1,l.getIsbn());// consulta preparada llamada SQL
            st.setString(2,l.getTitulo());
            st.setString(3,l.getDescripcion());
            st.setString(4,l.getAutor());
            st.setString(5,l.getAño_publica());
            st.setInt(6,l.getCodigo());
            st.setString(7,l.getNit());
            if(st.executeUpdate()>0){
                return true;// cuando se ghace cambios en la informacion insert o udpdate; si es mayor a cero ok
            }else{
            return false;}
                
        } catch (SQLException ex) {
            return false ;
        }
        
    }*/
 
    
    public static ArrayList<Libro> listar(String palabra){//metodo que lista

        try {
            String SQL="select * from Libros where Tema like ?";
            Connection con=Conexion.conectar();  //variable tipo Connection
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1,"%"+palabra+"%");// consulta preparada llamada SQL
            
            
            
           ResultSet resultado=st.executeQuery();
           ArrayList<Libro> lista=new ArrayList<>();
           Libro l;
           while(resultado.next()){
               l=new Libro();
               l.setId(resultado.getInt("id"));//mismos nombers que trae la consulta a la BD
               l.setTitulo(resultado.getString("Titulo"));
               l.setAutor(resultado.getString("Autor"));
               l.setTema(resultado.getString("Tema"));
               l.setEjemplares(resultado.getInt("Ejemplares"));
               lista.add(l);
           
           }
           return lista;
                
        } catch (SQLException ex) {
          ArrayList<Libro> lista=new ArrayList<>();
          
            
            return null  ;
        }
        
    }
    
    
    /*
    public static boolean actualizar(Libro l){//metodo que registra

        try {
            String SQL="update libro set" +
                    " titulo=?," +
                    " descripcion=?,"+
                    " autor=?,"+
                    " fecha_publicacion=?,"+
                    " codigo_categoria=?,"+
                    " nit_editorial=?"+
                    " where isbn=?";
                   
            Connection con=Conexion.conectar();  //variable tipo Connection
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(7,l.getIsbn());// consulta preparada llamada SQL
            st.setString(1,l.getTitulo());
            st.setString(2,l.getDescripcion());
            st.setString(3,l.getAutor());
            st.setString(4,l.getAño_publica());
            st.setInt(5,l.getCodigo());
            st.setString(6,l.getNit());
            if(st.executeUpdate()>0){
                return true;// cuando se ghace cambios en la informacion insert o udpdate; si es mayor a cero ok
            }else{
            return false;}
                
        } catch (SQLException ex) {
            return false ;
        }
        
    }*/
    /*
    public static boolean eliminar(Libro l){//metodo que registra

        try {
            String SQL="delete from libro where isbn=?";
                   
            Connection con=Conexion.conectar();  //variable tipo Connection
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1,l.getIsbn());// consulta preparada llamada SQL
            
            if(st.executeUpdate()>0){
                return true;// cuando se ghace cambios en la informacion insert o udpdate; si es mayor a cero ok
            }else{
            return false;}
                
        } catch (SQLException ex) {
            return false ;
        }
        
    }    
    */
    
}
