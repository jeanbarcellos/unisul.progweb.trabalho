package dao;

import model.Curso;
import java.util.List;

/**
 * Interface CursoDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public interface CursoDao {

    /**
     * Inserir objeto na base de dados
     *
     * @param objeto
     * @return Resultado da inserção
     */
    public boolean insert(Curso objeto);

    /**
     * Alterar objeto na base de dados
     *
     * @param objeto Objeto a ser alterado
     * @return
     */
    public boolean update(Curso objeto);

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
     * @return Objeto Curso
     */
    public Curso load(int id);

    /**
     * Recupera todos os registros da base de dados
     *
     * @return Lista de todos os Cursos
     */
    public List<Curso> all();

    /**
     * Recupera o último ID cadastrado
     *
     * @return último ID cadastrado
     */
    public int lastId();

}
