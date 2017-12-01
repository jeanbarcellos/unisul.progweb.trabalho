<%@page import="control.CursoControl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="includes/head.jsp" %>
  </head>
  <body class="gray-bg">
    <%@include file="includes/header.jsp" %>

    <%@include file="includes/slider.jsp" %>

    <section class="container home-section-1" id="more">

      <%@include file="includes/form-busca.jsp" %>

      <%@include file="includes/destaque.jsp" %>
      
    </section>

    <%@include file="includes/footer.jsp" %>

    <!-- Scrips // Inicio -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>    
    <!-- Scrips // Fim -->
  </body>
</html>
