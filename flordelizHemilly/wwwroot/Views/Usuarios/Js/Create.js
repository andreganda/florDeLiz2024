jQuery(document).ready(function () {

    $('#IdsLoja').select2({
        placeholder: "Selecione alguma loja",
        allowClear: true
    });

    let lojasAcesso = $("#LojasAcesso").val();
    if(lojasAcesso!="" && lojasAcesso!=null){
        lojasAcesso = JSON.parse(lojasAcesso);
        var $select = $('#IdsLoja');
        $select.val(lojasAcesso);  
        $select.select2({
            placeholder: "Selecione opções",
            allowClear: true
        });   
    }
});

$('#formCreate').submit(function(event) {
    event.preventDefault();
    let listaLojas = $("#IdsLoja").val();
    listaLojas = JSON.stringify(listaLojas);
    $("#LojasAcesso").val(listaLojas);
    this.submit();
});