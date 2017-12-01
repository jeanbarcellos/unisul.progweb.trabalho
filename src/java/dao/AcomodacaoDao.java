package dao;

import model.Acomodacao;
import java.util.List;

/**
 * Interface AcomodacaoDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public interface AcomodacaoDao {

    /**
     * Inserir objeto na base de dados
     *
     * @param objeto
     * @return Resultado da inserção
     */
    public boolean insert(Acomodacao objeto);

    /**
     * Alterar objeto na base de dados
     *
     * @param objeto Objeto a ser alterado
     * @return
     */
    public boolean update(Acomodacao objeto);

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
     * @return Objeto Acomodacao
     */
    public Acomodacao load(int id);

    /**
     * Recupera todos os registros da base de dados
     *
     * @return Lista de todos os Acomodacaos
     */
    public List<Acomodacao> all();

    /**
     * Recupera o último ID cadastrado
     *
     * @return último ID cadastrado
     */
    public int lastId();

}
