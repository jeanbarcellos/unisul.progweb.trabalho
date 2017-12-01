$(document).ready(function () {

    // Mobile menu
    $('.mobile-menu-icon').click(function () {
        $('.nav').toggleClass('show');
    });

});


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



function validarFormBusca() {
    var paraOnde = $("#form-para-onde");
    var dataChegada = $("#form-data-chegada");
    var dataSaida = $("#form-data-saida");
    var quantidade = $("#form-quantidade");

//    // Validação dos dados obrigatórios
//    if (paraOnde.val() == "") {
//        alert('Você deve informar para onde desejas viajar');
//        paraOnde.focus();
//        return false;
//    }

    url = "quartos-busca.jsp";

    location.href = url;

}
