function ValidacaoAdicionarProduto() {

    let descricao = $("#NomeDoProduto").val();
    let quantidade = $("#Quantidade").val();
    let valor = $("#PrecoUnitario").val();
    

    if (descricao.trim().length == 0) {
        MensagemErroSucesso(2, "Insira uma descrição ao produto");
        return false;
    }

    if (descricao.trim().length <= 5) {
        MensagemErroSucesso(2, "Insira uma descrição com mais de 5 (CINCO) letras ao produto");
        return false;
    }

    if (quantidade <= 0) {
        MensagemErroSucesso(2, "Insira uma quantidade válida, ACIMA DE ZERO");
        return false;
    }
    return true;
};

function ValidacaoVenda(){

    let idCliente = $("#ClienteId").val();

    if(idCliente == ""){
        MensagemErroSucesso(2, "Insira um cliente, ou escolha a opção AVULSO em clientes.");
        return false;
    }

    let flag = 0;
    for (let index = 0; index < listaProdutos.length; index++) {
        const element = listaProdutos[index];
        if(element!=null){
            flag++;
        }
    }

    if (flag == 0 ) {
        MensagemErroSucesso(2, "A lista de compras esta vazia, insira pelo menos 1 produto.");
        return false;
    }

    return true;
};