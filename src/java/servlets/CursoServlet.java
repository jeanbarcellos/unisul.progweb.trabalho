package servlets;

import control.CursoControl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Curso;
import util.Json;

/**
 *
 * @author Jean Barcellos <jeanbarcellos@hotmail.com>
 */
@WebServlet(name = "CursoServlet", urlPatterns = {"/webservice-curso"})

public class CursoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("application/json"); // header json

        String action = request.getParameter("acao");

        PrintWriter out = response.getWriter();

        CursoControl control = new CursoControl(request, response);

        if (action != null) {

            switch (action) {

                case "inserir": {
                    String retorno = "";

                    boolean persiste = control.inserir();
                    
                    if (persiste) {
                        retorno = Json.toJsonReturn(true, "Registro inserindo com sucesso");
                    } else {
                        retorno = Json.toJsonReturn(false, "Erro ao tentar inserir registro");
                    }

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
                    List<Curso> objetos = control.listar();
                    String retorno = Json.encode(objetos);
                    out.print(retorno);
                    break;
                }
                case "ver": {
                    Curso objeto = control.getObjeto();
                    String retorno = Json.encode(objeto);
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
