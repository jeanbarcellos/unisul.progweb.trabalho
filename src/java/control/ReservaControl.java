package control;

import dao.ReservaDao;
import dao.postgres.PostgresReservaDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Reserva;
import util.Json;
import util.JsonRetorno;

/**
 * Classe ReservaControl
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package control
 *
 */
public class ReservaControl {

    /**
     * Request
     */
    private HttpServletRequest request;

    private HttpServletResponse response;

    /**
     * DAO da Entidade Reserva
     */
    private ReservaDao dao = new PostgresReservaDao();

    /**
     * Interpretador Jbon
     */
    private Json json = new Json();

    public ReservaControl(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    public String inserir() {
        String retorno = "";

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");

        Reserva objeto = new Reserva();
        objeto.setId(id);
//        objeto.setNome(nome);

        boolean persiste = this.dao.insert(objeto);

        if (persiste) {
            retorno = Json.toJsonReturn(true, "Registro inserindo com sucesso");
        } else {
            retorno = Json.toJsonReturn(false, "Erro ao tentar inserir registro");
        }

        return retorno;
    }

    public String editar() {
        String retorno = "";

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");

        Reserva objeto = this.dao.load(id);
        objeto.setId(id);
//        objeto.setNome(nome);

        boolean persiste = this.dao.update(objeto);

        if (persiste) {
            retorno = Json.toJsonReturn(true, "Registro alterar com sucesso");
        } else {
            retorno = Json.toJsonReturn(false, "Erro ao tentar alterar registro");
        }

        return retorno;
    }

    public String excluir() {
        String retorno = "";

        if (!request.getParameter("id").isEmpty()) {

            int id = Integer.parseInt(request.getParameter("id"));

            boolean persiste = this.dao.delete(id);

            if (persiste) {
                retorno = Json.toJsonReturn(true, "Registro apagado com sucesso");
            } else {
                retorno = Json.toJsonReturn(false, "Erro ao tentar apagar registro");
            }
        } else {
            retorno = Json.toJsonReturn(false, "ID do objeto não informado");
        }

        return retorno;
    }

    public String listar() {

        List<Reserva> objetos = this.dao.all();

        String retorno = this.json.toJson(objetos);

        return retorno;
    }

    public String getObjeto() {
        String retorno = "";

        int id = Integer.parseInt(request.getParameter("id"));

        Reserva objeto = this.dao.load(id);

        if (objeto != null) {
            retorno = this.json.toJson(objeto);
            return retorno;
        } else {
            retorno = Json.toJsonReturn(false, "Erro ao tentar alterar registro");
        }

        return retorno;
    }

    public List<Reserva> pageListar() {
        List<Reserva> objetos = null;
        objetos = this.dao.all();
        return objetos;
    }
    
    public Reserva pageGetObjeto() {        
        Reserva objeto = null;
        int id = Integer.parseInt(request.getParameter("id"));
        objeto = this.dao.load(id);       
        return objeto;
    }

}
