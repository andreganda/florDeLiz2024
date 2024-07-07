function FinalizarCompra() {

    if (ValidacaoVenda()) {
        $("#modal_finalizacao").modal('show');
        FormaPagamento();
    }

};

function FormaPagamento() {

    let tipo = $("#TipoFormaPagamento").val();

    if (tipo == 1 || tipo == 4) {
        $("#divNumeroParcelas").show();
        $("#divEntrada").show();
        $("#divTableParcelas").show();
        $("#divPorcentagemAvista").hide();
        CalcularPrecoParcela();
    }

    if (tipo == 2 || tipo == 3) {
        $("#ValorPorcentagemAVista").val("0,00");
        $("#divNumeroParcelas").hide();
        $("#divEntrada").hide();
        $("#divTableParcelas").hide();
        $("#divPorcentagemAvista").show();

        LimparDadosModalPagamento();
    }

    // if (tipo == 1) {
    //     $("#divNumeroParcelas").show();
    //     $("#divEntrada").show();
    //     $("#divTableParcelas").show();
    //     CalcularPrecoParcela();
    // }else{
    //     $("#divNumeroParcelas").hide();
    //     $("#divEntrada").hide();
    //     $("#divTableParcelas").hide();
    //     LimparDadosModalPagamento();
    // }
};

function CalcularPrecoParcela() {
    let nParcela = parseInt($("#NumeroParcelas").val());
    let valorParcela = (totalCompra / nParcela);
    let data = new Date(GetData());

    $("#tbodyParcelas").empty();

    for (let index = 1; index <= nParcela; index++) {

        let dataParcela = new Date(GetData());
        dataParcela.setMonth(dataParcela.getMonth() + index);

        let linha = `
        <tr>
            <th scope="row" class="vertical-align-middle">${index}</th>
            <td class="vertical-align-middle"> ${dataParcela.toLocaleDateString()} </td>
            <td class="vertical-align-middle">${valorParcela.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })}</td>
        </tr>`;

        $("#tbodyParcelas").append(linha)
    }
};

function GetData() {
    return $("#DataCompra").val();
};

function LimparDadosModalPagamento() {
    $("#divTableParcelas").hide();
    $("#tbodyParcelas").empty();
    $("#divNumeroParcelas").hide();
    $("#divEntrada").hide();
    $("#NumeroParcelas").val(1)
    // $("#TipoFormaPagamento").val(2)
    $("#ValorEntrada").val('0,00')
};

function RefazerValorTotal() {

    totalCompra = totalCompra2;
    let valor = $("#ValorEntrada").val().replace(".", "");
    valor = valor.replace(",", ".");
    valor = parseFloat(valor);

    totalCompra = totalCompra - valor;

    CalcularPrecoParcela();

};

function CalcularDescontoAVista() {
    let juros = $("#ValorPorcentagemAVista").val().replace(".", "");
    juros = juros.replace(",", ".");
    juros = parseFloat(juros);

    let valorJuros = totalCompra2 * (juros / 100);
    valorJuros = parseFloat(totalCompra2 - valorJuros).toFixed(2);

    if (juros != 0) {
        $("#h4Desconto").show();
    } else {
        $("#ValorPorcentagemAVista").val("0,00");
        $("#h4Desconto").hide();
    }

    $("#h4TotalCompraComDesconto").text(valorJuros);
};

function CalcularEntrada() {

    let valor = $("#ValorEntrada").val().replace(".", "");
    valor = valor.replace(",", ".");
    valor = parseFloat(valor);

    let t = (totalCompra2 - valor).toFixed(2);

    if (valor != 0) {
        $("#h4RestaPrestacao").show();
    } else {
        $("#h4RestaPrestacao").hide();
    }

    $("#h4ValorQueSeraDividido").text(t);

};

