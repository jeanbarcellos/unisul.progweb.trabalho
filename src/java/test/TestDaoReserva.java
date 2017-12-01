/**
 * VITOR pra testar tu teclar CTRL + F6
 */
package test;

import dao.ReservaDao;
import dao.postgres.PostgresReservaDao;
import java.util.List;
import model.Reserva;
import util.Json;

/**
 * Classe para testar o DAO reserva
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestDaoReserva {

    public static void main(String[] args) {

        ReservaDao dao = new PostgresReservaDao();

        List<Reserva> reservas = dao.all();

//        String retorno = Json.encode(reservas);
//        System.out.println(retorno);

        Reserva reserva = dao.load(1);

        String retorno2 = Json.encode(reserva);
        System.out.println(retorno2);

    }

}
