using flordelizHemilly.Configuration;
using flordelizHemilly.DataBase;
using Hangfire;
using Hangfire.Console;
using Hangfire.Server;
using MySql.Data.MySqlClient;

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

    }
}
