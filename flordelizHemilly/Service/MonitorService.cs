using flordelizHemilly.Configuration;
using flordelizHemilly.DataBase;
using Hangfire;
using Hangfire.Console;
using Hangfire.Server;
using MySql.Data.MySqlClient;
using System.Net.Mail;
using System.Net;

namespace flordelizHemilly.Service
{
    public class MonitorService
    {
        public static void BackUpBd(string connectionString, string backupFilePath)
        {
            var dt = DateTime.Now;
            string nameFile = $"FLORDELIZ_{dt.Day}{dt.Month}{dt.Year}___hora___{dt.Hour}_{dt.Minute}_{dt.Second}.sql";
            var uploadsPath = Path.Combine(PathHelper.WebRootPath, "BackBd", nameFile);

            //var uploadsPath = Path.Combine(backupFilePath, "BackBd", nameFile);

            if (!Directory.Exists(uploadsPath))
            {
                try
                {
                    using (MySqlConnection conn = new MySqlConnection(connectionString))
                    {
                        using (MySqlCommand cmd = new MySqlCommand())
                        {
                            using (MySqlBackup mb = new MySqlBackup(cmd))
                            {
                                cmd.Connection = conn;
                                conn.Open();

                                // Executar o backup usando o utilitário mysqldump
                               mb.ExportToFile(uploadsPath);

                                conn.Close();

                                SendEmail(uploadsPath);

                                Console.WriteLine("Finalizadou BKP");
                            }
                        }
                    }
                }
                catch (Exception ex)
                {

                    throw;
                }
            }
        }

        private static void SendEmail(string attachmentFilePath)
        {
            // Configurações do SMTP da KingHost
            string smtpAddress = "smtp.kinghost.net";
            int portNumber = 587; // ou 465 para SSL
            bool enableSSL = true;

            string emailFrom = "admflordeliz@flordelizlinhares.kinghost.net";
            string password = "hemillyGandaadm*";
            string emailTo = "andrefelipeg@hotmail.com";
            string subject = "bkp flor de liz";
            string body = $"BACKUP REALIZADO EM : {DateTime.Now}";

            using (MailMessage mail = new MailMessage())
            {
                mail.From = new MailAddress(emailFrom);
                mail.To.Add(emailTo);
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;


                if (File.Exists(attachmentFilePath))
                {
                    Attachment attachment = new Attachment(attachmentFilePath);
                    mail.Attachments.Add(attachment);
                }

                using (SmtpClient smtp = new SmtpClient(smtpAddress, portNumber))
                {
                    smtp.Credentials = new NetworkCredential(emailFrom, password);
                    smtp.EnableSsl = enableSSL;
                    try
                    {
                        smtp.Send(mail);
                        Console.WriteLine("E-mail enviado com sucesso!");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Erro ao enviar e-mail: {ex.Message}");
                    }
                }
            }
        }

    }
}
