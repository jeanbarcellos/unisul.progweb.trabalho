/**
 * VITOR pra testar tu teclar CTRL + F6
 */
package test;

import dao.CursoDao;
import dao.postgres.PostgresCursoDao;
import java.util.List;
import model.Curso;
import util.Json;

/**
 * Classe para testar o DAO curso
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestDaoCurso {

    public static void main(String[] args) {

        CursoDao dao = new PostgresCursoDao();

        List<Curso> cursos = dao.all();
        
//        Json json = new Json();        
        String retorno = Json.encode(cursos);
        
        System.out.println(retorno);

//        for (Curso curso : cursos) {
//            System.out.println(curso.getNome());
//        }

    }

}
