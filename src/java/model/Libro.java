/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author edwin
 */
public class Libro implements Serializable{
    private int id;
    private String titulo;
    private String autor;
    private String tema;
    private int ejemplares;

    public Libro(int id, String titulo, String autor, String tema, int ejemplares) {
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.tema = tema;
        this.ejemplares = ejemplares;
    }

    public Libro() {
        this.id = 0;
        this.titulo = "";
        this.autor = "";
        this.tema = "";
        this.ejemplares = 0;
    }







    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public int getEjemplares() {
        return ejemplares;
    }

    public void setEjemplares(int ejemplares) {
        this.ejemplares = ejemplares;
    }











}