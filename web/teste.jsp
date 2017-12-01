<%@page import="model.Curso"%>
<%@page import="java.util.List"%>
<%@page import="dao.CursoDao"%>
<%@page import="dao.postgres.PostgresCursoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
  </head>
  <body>
    <%
        CursoDao dao = new PostgresCursoDao();

        List<Curso> cursos = dao.all();
        
        System.out.print(cursos);
//
//        for (Curso curso : cursos) {
////            System.out.println(curso);
//        }

    %>
    <h1>Hello World!</h1>
    <% 
        String nome = request.getParameter("nome");
    %>
    Nome: <%= nome %>

  </body>
</html>
