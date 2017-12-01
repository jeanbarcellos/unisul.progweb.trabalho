package dao.postgres;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.Log;

import model.Acomodacao;
import dao.AcomodacaoDao;

/**
 * Classe PostgresAcomodacaoDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 09/10/2016
 *
 * @package dao
 *
 */
public class PostgresAcomodacaoDao implements AcomodacaoDao {

    @Override
    public boolean insert(Acomodacao acomodacao) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("INSERT INTO acomodacao (id, nome) VALUES (?, ?)");
            ps.setInt(1, acomodacao.getId());
//            ps.setString(2, acomodacao.getNome());

            int retorno = ps.executeUpdate();

            return retorno == 1;

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
            return false;
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }
    }

    @Override
    public boolean update(Acomodacao acomodacao) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("UPDATE acomodacao SET nome = ? WHERE id = ? ;");
//            ps.setString(1, acomodacao.getNome());
            ps.setInt(2, acomodacao.getId());

            int retorno = ps.executeUpdate();

            return retorno == 1;

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
            return false;
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }
    }

    @Override
    public boolean delete(int id) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("DELETE FROM acomodacao WHERE id = ? ;");
            ps.setInt(1, id);

            int retorno = ps.executeUpdate();

            return retorno == 1;

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
            return false;
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }
    }

    @Override
    public Acomodacao load(int id) {
        Acomodacao acomodacao = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();
            String sql = "";
            sql += "SELECT id, titulo, endereco, cep, bairro, uf, descricao, numero_pessoas, data_inicio, data_fim, id_cliente ";
            sql += "FROM acomodacao ";
            sql += "WHERE id = ? ";
            sql += "LIMIT 1";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            rs.next();

            acomodacao = new Acomodacao();
            acomodacao.setId(rs.getInt("id"));
            acomodacao.setTitulo(rs.getString("titulo"));
            acomodacao.setEndereco(rs.getString("endereco"));
            acomodacao.setCep(rs.getString("cep"));
            acomodacao.setBairro(rs.getString("bairro"));
            acomodacao.setUf(rs.getString("uf"));
            acomodacao.setDescricao(rs.getString("descricao"));
            acomodacao.setNumeroPessoas(Integer.parseInt(rs.getString("numero_pessoas")));
            acomodacao.setDataInicio(rs.getDate("data_inicio"));
            acomodacao.setDataFim(rs.getDate("data_fim"));
            acomodacao.setIdCliente(Integer.parseInt(rs.getString("id_cliente")));

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }

        return acomodacao;
    }

    @Override
    public List<Acomodacao> all() {
        List<Acomodacao> acomodacaos = new ArrayList<Acomodacao>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();

            String sql = "";
            sql += "SELECT id, titulo, endereco, cep, bairro, uf, descricao, numero_pessoas, data_inicio, data_fim, id_cliente ";
            sql += "FROM acomodacao ";
            sql += "ORDER BY id";

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Acomodacao acomodacao = new Acomodacao();
                acomodacao.setId(rs.getInt("id"));
                acomodacao.setTitulo(rs.getString("titulo"));
                acomodacao.setEndereco(rs.getString("endereco"));
                acomodacao.setCep(rs.getString("cep"));
                acomodacao.setBairro(rs.getString("bairro"));
                acomodacao.setUf(rs.getString("uf"));
                acomodacao.setDescricao(rs.getString("descricao"));
                acomodacao.setNumeroPessoas(Integer.parseInt(rs.getString("numero_pessoas")));
                acomodacao.setDataInicio(rs.getDate("data_inicio"));
                acomodacao.setDataFim(rs.getDate("data_fim"));
                acomodacao.setIdCliente(Integer.parseInt(rs.getString("id_cliente")));
                acomodacaos.add(acomodacao);
            }

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }

        return acomodacaos;
    }

    @Override
    public int lastId() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int lastId = 0;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("SELECT MAX(id) AS last_id FROM acomodacao LIMIT 1");
            rs = ps.executeQuery();

            while (rs.next()) {
                lastId = rs.getInt("last_id");
            }

        } catch (SQLException ex) {
            Log.write(ex.getErrorCode() + " - " + ex.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }

        return lastId;

    }
}
