package model;

import util.Json;

/**
 * Classe Usuario
 *
 *
 * @author AluisioVictor
 * @date 01/12/2017
 *
 * @package model
 *
 */
public class Usuario {

    private int id;
    private String nome;
    private String email;
    private String senha;
    private String telefone;

    /**
     * Construtor
     */
    public Usuario() {

    }

    /**
     * Construtor com todos os parametros
     */
    public Usuario(int id, String nome, String email, String senha, String telefone) {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.telefone = telefone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    @Override
    public String toString() {
//        return "Usuario{" + "id=" + id + ", nome=" + nome + ", email=" + email + ", senha=" + senha + ", telefone=" + telefone + '}';
        return Json.encode(this);
    }

}
