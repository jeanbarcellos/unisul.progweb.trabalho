package model;

import java.util.Date;
import util.Json;

/**
 * Classe Reserva
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package model
 *
 */
public class Reserva {

    private int id;
    private Date dataInicio;
    private Date dataFim;
    private String situacao;
    private int idUsuario;
    private int idAcomodacao;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdAcomodacao() {
        return idAcomodacao;
    }

    public void setIdAcomodacao(int idAcomodacao) {
        this.idAcomodacao = idAcomodacao;
    }

    @Override
    public String toString() {
        return Json.encode(this);
//        return "Reserva{" + "id=" + id + ", dataInicio=" + dataInicio + ", dataFim=" + dataFim + ", situacao=" + situacao + ", idUsuario=" + idUsuario + ", idAcomodacao=" + idAcomodacao + '}';
    }

}
