using System.ComponentModel.DataAnnotations.Schema;

namespace flordelizHemilly.Models
{
    public class Venda
    {
        public int Id { get; set; }
        public DateTime DataDaVenda { get; set; }
        public int? ClienteId { get; set; }
        public int NumeroParcelas { get; set; }
        public Cliente Cliente { get; set; }
        public decimal Total { get; set; }
        public int? LojaId { get; set; }
        public string? Observacao { get; set; }

        /// <summary>
        /// Caso o cliente dê algum valor de entrada na compra para abater na criaçao 
        /// das parcelas.
        /// </summary>
        public decimal Entrada { get; set; }


        /// <summary>
        /// 1 - PARCELADO
        /// 2 - A VISTA
        /// </summary>
        public TipoPagamento TipoPagamento { get; set; }

        /// <summary>
        /// Verifica se a venda esta paga ou não
        /// 0-> Compra ainda não paga
        /// 1-> Compra toda paga, todas as parcelas foram pagas
        /// </summary>
        public int Status { get; set; }
        public int Excluido { get; set; }
        public ICollection<ItemVenda> Itens { get; set; }
        public ICollection<Parcela> Parcelas { get; set; }
    }



    public enum TipoPagamento
    {
        Crediario = 1,
        AVista = 2,
        CartaoDebito = 3,
        CartaoCredito = 4
    }

}
