
<%@page import="model.Acomodacao"%>
<%@page import="java.util.List"%>
<%@page import="control.AcomodacaoControl"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="includes/head.jsp" %>
  </head>
  <body class="gray-bg">
    <%@include file="includes/header.jsp" %>    

    <%@include file="includes/slider.jsp" %>    

    <!-- Fundo cinza // Inicio -->
    <section class="container home-section-1" id="more">

      <%@include file="includes/form-busca.jsp" %>  

      <%
          AcomodacaoControl acomodControl = new AcomodacaoControl(request, response);

          List<Acomodacao> lista = acomodControl.pageListar();

      %>

      <div class="row section-margin-top">    
        <div class="section-header">
          <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
          <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="section-title">Quartos encontrados</h2></div>
          <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
        </div>

        <%            for (Acomodacao quarto : lista) {
        %>

        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
          <div class="home-box-2 margin-bottom-30">
            <img src="uploads/destaque/<%= quarto.getId()%>.jpg" alt="image" class="img-responsive">
            <h3><%= quarto.getTitulo()%></h3>
            <div class="home-box-2-container">
              <a href="javascript:void(0);" class="home-box-2-link"><i class="fa fa-heart home-box-2-icon border-right"></i></a>
              <a href="javascript:void(0);" class="home-box-2-link"><span class="home-box-2-description">Detalhes</span></a>
              <a href="javascript:void(0);" class="home-box-2-link"><i class="fa fa-edit home-box-2-icon border-left"></i></a>
            </div>
          </div>
        </div>

        <%

            }
        %>    
      </div>


    </section>
    <!-- Fundo cinza // Fim -->    


    <%@include file="includes/footer.jsp" %>    


    <!-- Scrips // Inicio -->
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/moment.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script>
        // COmponente de calendário
        $(function () {
            $('.date').datetimepicker({format: 'MM/DD/YYYY'});
        });

        // Slider
        $(window).load(function () {
            $('.flexslider').flexslider({
                controlNav: false
            });
        });

//    function validarFormBusca() {
//        alert("funcionando");
//    }        
    </script>
    <!-- Scrips // Fim -->    
  </body>
</html>
