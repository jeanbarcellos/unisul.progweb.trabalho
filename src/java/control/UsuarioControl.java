package control;

import dao.UsuarioDao;
import dao.postgres.PostgresUsuarioDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Usuario;
import util.Json;
import util.JsonRetorno;

/**
 * Classe UsuarioControl
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package control
 *
 */
public class UsuarioControl {

    /**
     * Request
     */
    private HttpServletRequest request;

    private HttpServletResponse response;

    /**
     * DAO da Entidade Usuario
     */
    private UsuarioDao dao = new PostgresUsuarioDao();

    /**
     * Interpretador Jbon
     */
    private Json json = new Json();

    public UsuarioControl(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;
    }

    public String inserir() {
        String retorno = "";

        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String telefone = request.getParameter("telefone");

        Usuario objeto = new Usuario();
        objeto.setId(id);
        objeto.setNome(nome);
        objeto.setEmail(email);
        objeto.setSenha(senha);
        objeto.setTelefone(telefone);

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

        Usuario objeto = this.dao.load(id);
        objeto.setId(id);
        objeto.setNome(nome);

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

        List<Usuario> objetos = this.dao.all();

        String retorno = this.json.toJson(objetos);

        return retorno;
    }

    public String getObjeto() {
        String retorno = "";

        int id = Integer.parseInt(request.getParameter("id"));

        Usuario objeto = this.dao.load(id);

        if (objeto != null) {
            retorno = this.json.toJson(objeto);
            return retorno;
        } else {
            retorno = Json.toJsonReturn(false, "Erro ao tentar alterar registro");
        }

        return retorno;
    }

    public List<Usuario> pageListar() {
        List<Usuario> objetos = null;
        objetos = this.dao.all();
        return objetos;
    }
    
    public Usuario pageGetObjeto() {        
        Usuario objeto = null;
        int id = Integer.parseInt(request.getParameter("id"));
        objeto = this.dao.load(id);       
        return objeto;
    }

}
