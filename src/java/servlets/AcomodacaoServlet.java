package servlets;

import control.AcomodacaoControl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.Json;

/**
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
@WebServlet(name = "AcomodacaoServlet", urlPatterns = {"/webservice-acomodacao"})

public class AcomodacaoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("application/json"); // header json

        String action = request.getParameter("acao");

        PrintWriter out = response.getWriter();

        AcomodacaoControl control = new AcomodacaoControl(request, response);

        if (action != null) {

            switch (action) {

                case "inserir": {
                    String retorno = control.inserir();
                    out.print(retorno);
                    break;
                }
                case "editar": {
                    String retorno = control.editar();
                    out.print(retorno);
                    break;
                }
                case "excluir": {
                    String retorno = control.excluir();
                    out.print(retorno);
                    break;
                }
                case "listar": {
                    String retorno = control.listar();
                    out.print(retorno);
                    break;
                }
                case "ver": {
                    String retorno = control.getObjeto();
                    out.print(retorno);
                    break;
                }
                default: {
                    String retorno = Json.toJsonReturn(false, "Nenhuma ação foi solicitada");
                    out.print(retorno);
                    break;
                }

            }

        } else {
            String retorno = Json.toJsonReturn(false, "Nenhuma ação foi solicitada");
            out.print(retorno);
        }
    }

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

}
