/**
 * VITOR pra testar tu teclar CTRL + F6
 */
package test;

import dao.CursoDao;
import dao.postgres.PostgresCursoDao;
import java.util.List;
import model.Curso;

/**
 * Classe para testar o DAO curso
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestDaoCurso {

    public static void main(String[] args) {

        CursoDao dao = new PostgresCursoDao();

        List<Curso> cursos = dao.all();

        for (Curso curso : cursos) {
            System.out.println(curso.getNome());
        }

    }

}
