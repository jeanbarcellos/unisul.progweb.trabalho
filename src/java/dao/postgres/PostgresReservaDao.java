package dao.postgres;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import util.Log;

import model.Reserva;
import dao.ReservaDao;

/**
 * Classe PostgresReservaDao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 09/10/2016
 *
 * @package dao
 *
 */
public class PostgresReservaDao implements ReservaDao {

    @Override
    public boolean insert(Reserva reserva) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("INSERT INTO reserva (id, nome) VALUES (?, ?)");
            ps.setInt(1, reserva.getId());
//            ps.setString(2, reserva.getNome());

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
    public boolean update(Reserva reserva) {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("UPDATE reserva SET nome = ? WHERE id = ? ;");
//            ps.setString(1, reserva.getNome());
            ps.setInt(2, reserva.getId());

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

            ps = conn.prepareStatement("DELETE FROM reserva WHERE id = ? ;");
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
    public Reserva load(int id) {
        Reserva reserva = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();
            
            String sql = "";
            sql += "SELECT id, data_inicio, data_fim, situacao, id_usuario, id_acomodacao ";
            sql += "FROM reserva ";
            sql += "WHERE id = ? ";
            sql += "LIMIT 1";

            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            rs = ps.executeQuery();
            rs.next();

            reserva = new Reserva();
            reserva.setId(rs.getInt("id"));
            reserva.setDataInicio(rs.getDate("data_inicio"));
            reserva.setDataFim(rs.getDate("data_fim"));
            reserva.setSituacao(rs.getString("situacao"));
            reserva.setIdUsuario(Integer.parseInt(rs.getString("id_usuario")));
            reserva.setIdAcomodacao(Integer.parseInt(rs.getString("id_acomodacao")));

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

        return reserva;
    }

    @Override
    public List<Reserva> all() {
        List<Reserva> reservas = new ArrayList<Reserva>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = ConnectionFactory.open();

            String sql = "";
            sql += "SELECT id, data_inicio, data_fim, situacao, id_usuario, id_acomodacao ";
            sql += "FROM reserva ";
            sql += "ORDER BY id";

            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Reserva reserva = new Reserva();
                reserva.setId(rs.getInt("id"));
                reserva.setDataInicio(rs.getDate("data_inicio"));
                reserva.setDataFim(rs.getDate("data_fim"));
                reserva.setSituacao(rs.getString("situacao"));
                reserva.setIdUsuario(Integer.parseInt(rs.getString("id_usuario")));
                reserva.setIdAcomodacao(Integer.parseInt(rs.getString("id_acomodacao")));
                reservas.add(reserva);
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

        return reservas;
    }

    @Override
    public int lastId() {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int lastId = 0;

        try {
            conn = ConnectionFactory.open();

            ps = conn.prepareStatement("SELECT MAX(id) AS last_id FROM reserva LIMIT 1");
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
