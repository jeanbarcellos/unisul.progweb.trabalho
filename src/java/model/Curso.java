package model;

import util.Json;

/**
 * Modelo Curso
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 07/09/2016
 *
 * @package model
 *
 */
public class Curso {

    /**
     * id_curso 
     * integer NOT NULL PRIMARy KEY 
     */
    private int id;
    
    /**
     * nome 
     * varchar NOT NULL PRIMARY KEY
     */
    private String nome;

    /**
     * Construtor
     */
    public Curso() {
    }

    /**
     * Construtor com do Nome por parametro
     *
     * @param nome Nome do Curso
     */
    public Curso(String nome) {
        this.nome = nome;
    }

    /**
     * Construtor com passagem de ID e Nome por parâmetro
     *
     * @param id ID do Curso
     * @param nome Nome do Curso
     */
    public Curso(int id, String nome) {
        this.id = id;
        this.nome = nome;
    }

    /**
     * Retorna o ID do Curso
     *
     * @return ID do Curso
     */
    public int getId() {
        return id;
    }

    /**
     * Define o ID do Curso
     *
     * @param id ID do Curso
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Retorna o Nome do Curso
     *
     * @return Nome do Curso
     */
    public String getNome() {
        return nome;
    }

    /**
     * Define o nome do Curso
     *
     * @param nome Nome do Curso
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 19 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Curso other = (Curso) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return Json.encode(this);
//        return "Curso {" + "id: " + id + ", nome: " + nome + "}";
    }

}
