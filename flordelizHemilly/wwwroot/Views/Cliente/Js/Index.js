"use strict";

jQuery(document).ready(function () {
    let table = new DataTable('#kt_datatable',{
        responsive: true,
        language: {
            "lengthMenu": "Mostrar _MENU_ registros por página",
            "zeroRecords": "Nenhum registro encontrado - Desculpe",
            "search": "Procurar",
            "info": "Mostrando pagina _PAGE_ de _PAGES_",
            "infoEmpty": "Nenhum registro encontrado",
            "infoFiltered": "(Filtrado de _MAX_ registros)",
            paginate: {
                "first": "Primeiro",
                "last": "Último",
                "next": "Próximo",
                "previous": "Anterior"
            }
        },
        lengthMenu: [5, 10, 25, 50], pageLength: 10
    })
    
});