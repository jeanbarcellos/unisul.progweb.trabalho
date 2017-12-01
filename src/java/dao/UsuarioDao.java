package dao;

import java.util.List;
import model.Usuario;

/**
 * Classe UsuarioDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 01/12/2017
 *
 * @package dao
 *
 */
public interface UsuarioDao {

    /**
     * Inserir objeto na base de dados
     *
     * @param objeto
     * @return Resultado da inserção
     */
    public boolean insert(Usuario objeto);

    /**
     * Alterar objeto na base de dados
     *
     * @param objeto Objeto a ser alterado
     * @return
     */
    public boolean update(Usuario objeto);

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
     * @return Objeto Usuario
     */
    public Usuario load(int id);

    /**
     * Recupera todos os registros da base de dados
     *
     * @return Lista de todos os Usuarios
     */
    public List<Usuario> all();

    /**
     * Recupera o último ID cadastrado
     *
     * @return último ID cadastrado
     */
    public int lastId();
}
