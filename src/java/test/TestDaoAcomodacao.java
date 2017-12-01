/**
 * VITOR pra testar tu teclar CTRL + F6
 */
package test;

import dao.AcomodacaoDao;
import dao.postgres.PostgresAcomodacaoDao;
import java.util.List;
import model.Acomodacao;
import util.Json;

/**
 * Classe para testar o DAO acomodacao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestDaoAcomodacao {

    public static void main(String[] args) {

        AcomodacaoDao dao = new PostgresAcomodacaoDao();

        List<Acomodacao> acomodacaos = dao.all();

        String retorno = Json.encode(acomodacaos);
        System.out.println(retorno);
//        
        
//        Acomodacao acomodacao = dao.load(1);
//        
//        String retorno2 = Json.encode(acomodacao);
//        System.out.println(retorno2);

    }

}
