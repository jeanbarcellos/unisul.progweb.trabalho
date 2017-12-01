package util;

import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Classe Log
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 * @date 11/09/2016
 *
 * @package api
 *
 */
public final class Log {

    private Log() {
    }

    /**
     * Grava a mensagem no arquivo
     *
     * @param mensagem
     */
    static public void write(String mensagem) {
        System.err.println(mensagem);
//
//        String arquivo = Config.getInstance().getValue("logErros");
//
//        OutputStream escritorByte = null;
//        OutputStreamWriter escritorCaracter = null;
//        BufferedWriter escritorPalavras = null;
//
//        try {
//            escritorByte = new FileOutputStream(arquivo, true);
//            escritorCaracter = new OutputStreamWriter(escritorByte);
//            escritorPalavras = new BufferedWriter(escritorCaracter);
//
//            Date data = new Date();
//            SimpleDateFormat formatador = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//
//            String msg = formatador.format(data) + " :: " + mensagem + "";
//
//            escritorPalavras.write(msg);
//            escritorPalavras.newLine();
//            escritorPalavras.flush();
//
//        } catch (FileNotFoundException e) {
//
//        } catch (IOException e) {
//
//        } finally {
//            try {
//                if (escritorPalavras != null) {
//                    escritorPalavras.close();
//                }
//                if (escritorCaracter != null) {
//                    escritorCaracter.close();
//                }
//                if (escritorByte != null) {
//                    escritorByte.close();
//                }
//            } catch (Exception e) {
//            }
//        }

    }
}
