var diasVencidoGLOBAL = 0;
var valorParcelaGLOBAL = 0;

jQuery(document).ready(function () {
    SetDataHoje();
});

function AbrirModalParcela(numeroParcela, diasVencido, valorParcela, idParcela,dtVencimento) {
    var valorCorrigido = CalcularValorCorrigido(diasVencido, valorParcela);
    $("#ValorParcela").val(valorParcela);
    $("#ValorPagamento").val(valorCorrigido);
    $("#DiasDeAtraso").val(diasVencido);
    $("#IdParcela").val(idParcela);
    $("#dtVencimentoParcela").val(dtVencimento);
    $("#modal_parcela").modal('show');
};

function DataPagamentoChange(){
    let dt1 = $("#dtVencimentoParcela").val();
    let dt2 =  $("#DataPagamento").val();
    let diasVencido = DiferencaEmDias(dt1,dt2);
    let valorParcela = $("#ValorParcela").val();

    if(diasVencido>0){
        $("#DiasDeAtraso").val(diasVencido);
    }else{
        $("#DiasDeAtraso").val(0);
        diasVencido = 0;
    }

    CalcularValorCorrigido(diasVencido, valorParcela);
};

function DiferencaEmDias(data1, data2) {
    var partes1 = data1.split("/");
    var ano1 = partes1[2];
    var mes1 = partes1[1] - 1;
    var dia1 = partes1[0];

    var partes2 = data2.split("-");
    var ano2 = partes2[0];
    var mes2 = partes2[1] - 1;
    var dia2 = partes2[2];

    const dataInicio = new Date(ano1, mes1, dia1);
    const dataFim = new Date(ano2, mes2, dia2);

    const diferencaEmMilissegundos = dataFim - dataInicio;

    const diferencaEmDias = diferencaEmMilissegundos / (1000 * 60 * 60 * 24);

    return diferencaEmDias;
}

function FormatarMoeda(i) {
    var v = i.value.replace(/\D/g, '');
    v = (v / 100).toFixed(2) + '';
    v = v.replace(".", ",");
    v = v.replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1.');
    i.value = v;
};

function SetDataHoje() {

    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();

    if (dd < 10) {
        dd = '0' + dd
    }

    if (mm < 10) {
        mm = '0' + mm
    }

    today = dd + '/' + mm + '/' + yyyy;

    let today2 = `${yyyy}-${mm}-${dd}`;

    $("#DataPagamento").val(today2);
};

function CalcularValorCorrigido(diasVencido, valorParcela) {
    let juros = $("#ValorJuros").val().replace(".", "");
    juros = juros.replace(",", ".");
    juros = parseFloat(juros);

    valorParcela = valorParcela.replace(".", "");
    valorParcela = valorParcela.replace(",", ".");
    valorParcela = parseFloat(valorParcela).toFixed(2);

    let valorJuros = valorParcela * (juros / 100);
    valorJuros = valorJuros * diasVencido;

    let valorCorrigido = (valorJuros + parseFloat(valorParcela)).toFixed(2);
    valorCorrigido = valorCorrigido.replace(".",",");
    $("#ValorCorrigido").val(valorCorrigido);
    $("#ValorPagamento").val(valorCorrigido);

    return valorCorrigido;
};

function CalcularValorCorrigidoChange() {
    let juros = $("#ValorJuros").val().replace(".", "");
    juros = juros.replace(",", ".");
    juros = parseFloat(juros);

    let valorParcela = $("#ValorParcela").val().replace(".", "");
    valorParcela = valorParcela.replace(".", "");
    valorParcela = valorParcela.replace(",", ".");
    valorParcela = parseFloat(valorParcela).toFixed(2);

    let diasVencido = $("#DiasDeAtraso").val();

    let valorJuros = valorParcela * (juros / 100);
    valorJuros = valorJuros * diasVencido;

    let valorCorrigido = (valorJuros + parseFloat(valorParcela)).toFixed(2);

    $("#ValorCorrigido").val(valorCorrigido);
};

function Receber() {

    let valorPagamento = $("#ValorPagamento").val();
    let dataPagamento = $("#DataPagamento").val();
    let idParcela = $("#IdParcela").val();
    let observacao = $("#Observacao").val();

    let juros = $("#ValorJuros").val().replace(".", "");
    juros = juros.replace(",", ".");
    juros = parseFloat(juros);

    // Obtém os dados do formulário
    var formData = {
        Valor: valorPagamento,
        IdParcela: idParcela,
        DataPagamento: dataPagamento,
        Juros: juros,
        Observacao: observacao
    };

    $.ajax({
        type: "POST",
        url: "/Parcelas/EfetuarPagamento",
        dataType: "json",
        async: false,
        data: formData,
        success: function (msg) {


            if (msg.status == 1) {
                Swal.fire({
                    title: "Eba",
                    text: msg.descricao,
                    icon: "success",
                    confirmButtonText: "OK!",
                    allowOutsideClick: false,  // Evita que o alerta seja fechado ao clicar fora dele
                    allowEscapeKey: false,     // Evita que o alerta seja fechado ao pressionar a tecla "Escape"
                    allowEnterKey: false       // Evita que o alerta seja fechado ao pressionar a tecla "Enter"
                }).then(function (result) {
                    if (result.value) {

                        location.reload();
                    }
                });

            }

        },
        error: function (response) {
            alert(response);
        }
    });
};

function AbrirModalDetalhesParcela(idParcela) {
    $("#modal_detalhes_parcela").modal('show');

    let param = {};
    param.idParcela = idParcela;

    $.ajax({
        type: "GET",
        url: "/Parcelas/DetalharHistorico",
        // dataType: "json",
        // async: false,
        data: param,
        // contentType: "application/json; charset=utf-8",
        success: function (msg) {

            $("#tbodyDetalhesPagamento").html(msg);

        },
        error: function (response) {
            alert(response);
        }
    });
};

function ReceberValorParcela(elemento){
    if(elemento.value == 0){
        $("#ValorPagamento").removeAttr("disabled");
    }else{
        $("#ValorPagamento").val($("#ValorCorrigido").val());
        $("#ValorPagamento").attr("disabled","disabled");
    }
};

function ValidarValorEntrada(elemento){
    let valorCorrigidoSemAlteracao  = $("#ValorCorrigido").val()
    let valorCorrigido  = $("#ValorCorrigido").val().replaceAll(".","").replaceAll(",","");
    let valorCliente = elemento.value.replaceAll(".","").replaceAll(",","");

    valorCorrigido = parseFloat(valorCorrigido);
    valorCliente = parseFloat(valorCliente);

    if(valorCliente>valorCorrigido){
        $("#ValorPagamento").val(valorCorrigidoSemAlteracao);
    }
};

function ReverterPagamento(idParcela){
    let param = {};
    param.idParcela = idParcela;

    $.ajax({
        type: "GET",
        url: "/Parcelas/ReverterPagamento",
        data: param,
        success: function (msg) {

            if (msg.status == 1) {
                Swal.fire({
                    title: "Eba",
                    text: msg.descricao,
                    icon: "success",
                    confirmButtonText: "OK!",
                    allowOutsideClick: false,  // Evita que o alerta seja fechado ao clicar fora dele
                    allowEscapeKey: false,     // Evita que o alerta seja fechado ao pressionar a tecla "Escape"
                    allowEnterKey: false       // Evita que o alerta seja fechado ao pressionar a tecla "Enter"
                }).then(function (result) {
                    if (result.value) {

                        location.reload();
                    }
                });

            }else{
                Swal.fire({
                    title: "Opsss",
                    text: msg.descricao,
                    icon: "error",
                    confirmButtonText: "OK!",
                    allowOutsideClick: false,  // Evita que o alerta seja fechado ao clicar fora dele
                    allowEscapeKey: false,     // Evita que o alerta seja fechado ao pressionar a tecla "Escape"
                    allowEnterKey: false       // Evita que o alerta seja fechado ao pressionar a tecla "Enter"
                }).then(function (result) {
                    if (result.value) {

                        location.reload();
                    }
                });  
            }

        },
        error: function (response) {
            alert(response);
        }
    });
};