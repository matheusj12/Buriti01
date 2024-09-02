//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require chartkick
//= require Chart.bundle
//= link home/home.css




// ----------------------------------// logica que muda o thema-------------------------------------------------------------
$(document).ready(function() {
  // Verifica se o tema está definido no localStorage
  var currentTheme = localStorage.getItem('theme');

  // Se o tema estiver definido, aplica-o
  if (currentTheme) {
    $('body').addClass(currentTheme);
  }

  // Manipula o clique no botão de alternância de tema
  $('#theme-toggle').click(function() {
    // Obtém o elemento body
    var body = $('body');

    // Verifica qual tema está sendo exibido atualmente
    if (body.hasClass('theme-light')) {
      // Se o tema atual for claro, muda para o tema escuro
      body.removeClass('theme-light');
      body.addClass('theme-dark');
      // Salva o tema no localStorage
      localStorage.setItem('theme', 'theme-dark');
    } else {
      // Caso contrário, muda para o tema claro
      body.removeClass('theme-dark');
      body.addClass('theme-light');
      // Salva o tema no localStorage
      localStorage.setItem('theme', 'theme-light');
    }
  });
});
// -----------------------------------------------------------------------------------------------

// app/assets/javascripts/vendas.js
$(document).ready(function() {
  $('#tabela-vendas').DataTable();
});
