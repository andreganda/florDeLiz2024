    using System.ComponentModel.DataAnnotations;

namespace flordelizHemilly.Models
{
    public class Usuario
    {
        [Key]
        public int Id { get; set; }

        public string Nome { get; set; }

        public string Telefone { get; set; }

        [EmailAddress(ErrorMessage = "Esse não é um email válido")]
        [StringLength(100)]
        public string Email { get; set; }

        public string? Login { get; set; }

        public string? Senha { get; set; }

        public string LojasAcesso { get; set; }
        public int LojaId{ get; set; }
    }
}
