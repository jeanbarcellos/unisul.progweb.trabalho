package control;

import dao.CursoDao;
import dao.postgres.PostgresCursoDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Curso;

/**
 * Classe CursoControl
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package control
 *
 */
public class CursoControl {

    private HttpServletRequest request;

    private CursoDao dao = new PostgresCursoDao();

    public CursoControl(HttpServletRequest request) {
        this.request = request;
    }

    public String inserir() {
        return "Inserindo através do controlador" + request.getParameter("teste");
    }

    public String editar() {
        return "Alterando  do controlador" + request.getParameter("teste");
    }

    public String excluir() {
        return "Excluindo através do controlador" + request.getParameter("teste");
    }

    public String listar() {

        List<Curso> cursos = this.dao.all();

        String txt = "";

        for (Curso curso : cursos) {
            txt += curso.toString();
        }

        return txt;
    }

}
