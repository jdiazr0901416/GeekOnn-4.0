function newsFeedInMenu(){
    $("#M-home").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloNF"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
    $('#M-home').popover('show');
}
function newsFeedInMenuPerfil()
{
    $("#M-perfil").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloP"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
    $('#M-perfil').popover('show');
}
function newsFeedInMenuMensajes()
{
    $("#M-mensajes").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloM"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
    $('#M-mensajes').popover('show');
}
function newsFeedInMenuAmigos()
{
    $("#M-amigos").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloA"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
    $('#M-amigos').popover('show');
}
function newsFeedInMenuOpiniones()
{
    $("#M-opiniones").popover({ template: '<div class="popover popover-up" style="width:250px; "><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title text-center tituloO"></h3><div class="popover-content text-center"><p></p></div></div></div>',trigger: "hover"});
    $('#M-opiniones').popover('show');
}
$(document).on('ready', inicio());
    function inicio(){
      $('#M-home').on('mouseover', newsFeedInMenu);
      $('#M-perfil').on('mouseover', newsFeedInMenuPerfil);
      $('#M-mensajes').on('mouseover', newsFeedInMenuMensajes);
      $('#M-amigos').on('mouseover', newsFeedInMenuAmigos);
      $('#M-opiniones').on('mouseover', newsFeedInMenuOpiniones);
    }