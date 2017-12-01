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
    
    <%@include file="includes/cabecalho.jsp" %>
    
    <h1>Cursos!</h1>
    <%
        CursoDao dao = new PostgresCursoDao();

        List<Curso> cursos = dao.all();

        System.out.print(cursos);

        for (Curso curso : cursos) {
    %>
    Nome: <%= curso.getNome()%> <br>
    <%
        }

    %>
  </body>
</html>
