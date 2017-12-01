package model;

import java.util.Date;
import util.Json;

/**
 * Classe Acomodacao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package model
 *
 */
public class Acomodacao {

    private int id;
    private String titulo;
    private String endereco;
    private String cep;
    private String bairro;
    private String uf;
    private String descricao;
    private int numeroPessoas;
    private Date dataInicio;
    private Date dataFim;
    private int idCliente;

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

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getNumeroPessoas() {
        return numeroPessoas;
    }

    public void setNumeroPessoas(int numeroPessoas) {
        this.numeroPessoas = numeroPessoas;
    }

    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFim() {
        return dataFim;
    }

    public void setDataFim(Date dataFim) {
        this.dataFim = dataFim;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    @Override
    public String toString() {
        return Json.encode(this);
//        return "Acomodacao{" + "id=" + id + ", titulo=" + titulo + ", endereco=" + endereco + ", cep=" + cep + ", bairro=" + bairro + ", uf=" + uf + ", descricao=" + descricao + ", numeroPessoas=" + numeroPessoas + ", dataInicio=" + dataInicio + ", dataFim=" + dataFim + ", idCliente=" + idCliente + '}';
    }

}
