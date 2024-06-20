using flordelizHemilly.Configuration;
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
            string nameFile = $"FLORDELIZ_{dt.Day}{dt.Month}{dt.Year}_{dt.Millisecond}--{dt.Hour}_{dt.Minute}_{dt.Second}.sql";
            var uploadsPath = Path.Combine(backupFilePath, "wwwroot", "BackBd", nameFile);

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
