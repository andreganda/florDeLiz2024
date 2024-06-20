using Hangfire.Dashboard;
using MySql.Data.MySqlClient;
using System.Diagnostics.CodeAnalysis;

namespace flordelizHemilly.Configuration
{
    public interface IBackupService
    {
        void BackupDatabase(string backupFilePath);
    }

    public class BackupService : IBackupService
    {
        private readonly string _connectionString;

        public BackupService(string connectionString)
        {
            _connectionString = connectionString;
        }

        public void BackupDatabase(string backupFilePath)
        {
            using (var connection = new MySqlConnection(_connectionString))
            {
                using (var command = connection.CreateCommand())
                {
                    connection.Open();
                    command.CommandText = $"BACKUP DATABASE flordeliz TO DISK='{backupFilePath}'";
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}
