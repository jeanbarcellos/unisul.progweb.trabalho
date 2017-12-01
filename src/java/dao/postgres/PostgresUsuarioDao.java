package dao.postgres;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.Log;

import model.Usuario;
import dao.UsuarioDao;

/**
 * Classe PostgresUsuarioDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 09/10/2016
 *
 * @package dao
 *
 */
public class PostgresUsuarioDao implements UsuarioDao {

    @Override
    public boolean insert(Usuario usuario) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("INSERT INTO usuario (id, nome) VALUES (?, ?)");
            ps.setInt(1, usuario.getId());
            ps.setString(2, usuario.getNome());

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
    public boolean update(Usuario usuario) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("UPDATE usuario SET nome = ? WHERE id = ? ;");
            ps.setString(1, usuario.getNome());
            ps.setInt(2, usuario.getId());

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

            ps = conn.prepareStatement("DELETE FROM usuario WHERE id = ? ;");
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
    public Usuario load(int id) {
        Usuario usuario = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();
            String sql = "";

            sql += "SELECT id, nome, email, senha, telefone ";
            sql += "FROM usuario ";
            sql += "WHERE id = ? ";
            sql += "LIMIT 1";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            rs.next();

            usuario = new Usuario();
            usuario.setId(rs.getInt("id"));
            usuario.setNome(rs.getString("nome"));
            usuario.setEmail(rs.getString("email"));
            usuario.setSenha(rs.getString("senha"));
            usuario.setTelefone(rs.getString("telefone"));

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

        return usuario;
    }

    @Override
    public List<Usuario> all() {
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("SELECT id, nome, email, senha, telefone FROM usuario ORDER BY id");
            rs = ps.executeQuery();

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setTelefone(rs.getString("telefone"));
                usuarios.add(usuario);
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

        return usuarios;
    }

    @Override
    public int lastId() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int lastId = 0;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("SELECT MAX(id) AS last_id FROM usuario LIMIT 1");
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
