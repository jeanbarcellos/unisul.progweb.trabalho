package dao;

import model.Reserva;
import java.util.List;

/**
 * Interface ReservaDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public interface ReservaDao {

    /**
     * Inserir objeto na base de dados
     *
     * @param objeto
     * @return Resultado da inserção
     */
    public boolean insert(Reserva objeto);

    /**
     * Alterar objeto na base de dados
     *
     * @param objeto Objeto a ser alterado
     * @return
     */
    public boolean update(Reserva objeto);

    /**
     * Apagar objeto da base de dados
     *
     * @param id
     * @return
     */
    public boolean delete(int id);

    /**
     * Recupera um objeto da base de dados através de seu ID informado e
     * instancia-o na memória
     *
     * @param id ID do objeto
     * @return Objeto Reserva
     */
    public Reserva load(int id);

    /**
     * Recupera todos os registros da base de dados
     *
     * @return Lista de todos os Reservas
     */
    public List<Reserva> all();

    /**
     * Recupera o último ID cadastrado
     *
     * @return último ID cadastrado
     */
    public int lastId();

}
