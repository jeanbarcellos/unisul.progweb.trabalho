
<%@page import="model.Acomodacao"%>
<%@page import="java.util.List"%>
<%@page import="control.AcomodacaoControl"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="section-margin-top">
  <div class="row">
    <div class="section-header">
      <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
      <div class="col-lg-6 col-md-6 col-sm-6"><h2 class="section-title">Estadias em destaque</h2></div>
      <div class="col-lg-3 col-md-3 col-sm-3"><hr></div>
    </div>
  </div>

  <%
      AcomodacaoControl acomodControl = new AcomodacaoControl(request, response);

      List<Acomodacao> lista = acomodControl.pageListar();

  %>


  <div class="row">      

    <%
        for (int i = 0; i < 4; i++) {

    %>

    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 col-xxs-12">
      <div class="home-box-2">
        <img src="uploads/destaque/<%= lista.get(i).getId() %>.jpg" alt="image" class="img-responsive">
        <h3><%= lista.get(i).getTitulo() %></h3>
        <!--<p class="date2">28 Março 2017</p>-->
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
  <div class="row">
    <div class="col-lg-12">
      <p class="home-description">Vestibulum ex ex, maximus vel metus nec, venenatis tincidunt tortor. Proin varius augue a diam lobortis, dictum tempus lorem vestibulum. Donec sed molestie tortor. In ac nibh sit amet purus tempor scelerisque id non ligula. Integer ornare sagittis massa suscipit consequat</p>
    </div>
  </div>
</div>
