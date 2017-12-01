package dao.postgres;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import util.Config;
import util.Log;

/**
 * Classe Conexao
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 11/09/2016
 *
 * @package api
 *
 */
public class ConnectionFactory {

    /**
     * Abre conexão com o Banco de Dados
     *
     * @return Instância de Conexão
     */
    public static Connection open() throws Exception {

        Connection conn = null;
        Config config = Config.getInstance();

        String server = "postgresql";
        String host = "localhost";
        String port = "5432";
        String user = "postgres";
        String password = "postgres";
        String database = "biblioteca";

//        String server = config.getValue("server");
//        String host = config.getValue("host");
//        String port = config.getValue("port");
//        String user = config.getValue("user");
//        String password = config.getValue("password");
//        String database = config.getValue("database");

        try {
            Class.forName("org.postgresql.Driver");
            
            conn = DriverManager.getConnection("jdbc:" + server + "://" + host + ":" + port + "/" + database, user, password);
        } catch (SQLException ex) {
            Log.write("Código: " + ex.getErrorCode() + "" + ex.getMessage());
        }

        return conn;
    }
}
