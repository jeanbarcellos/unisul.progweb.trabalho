package test;

import dao.postgres.ConnectionFactory;
import java.sql.Connection;
import util.Log;

/**
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
public class TestConection {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection conn = null;

        try {
            conn = ConnectionFactory.open();      
        } catch (Exception ex) {
            Log.write(ex.getMessage());
            System.out.println(ex);
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {

            }
        }

    }

}
