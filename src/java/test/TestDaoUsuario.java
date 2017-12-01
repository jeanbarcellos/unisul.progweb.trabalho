/**
 * VITOR pra testar tu teclar CTRL + F6
 */
package test;

import dao.UsuarioDao;
import dao.postgres.PostgresUsuarioDao;
import java.util.List;
import model.Usuario;
import util.Json;

/**
 * Classe para testar o DAO curso
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestDaoUsuario {

    public static void main(String[] args) {

        UsuarioDao dao = new PostgresUsuarioDao();

        List<Usuario> cursos = dao.all();
        
//        Json json = new Json();        
        String retorno = Json.encode(cursos);
        
        System.out.println(retorno);

//        for (Usuario curso : cursos) {
//            System.out.println(curso.getNome());
//        }

    }

}
