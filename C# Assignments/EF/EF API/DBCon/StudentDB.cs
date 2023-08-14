using EF_API.Model;
using Microsoft.EntityFrameworkCore;

namespace EF_API.DBCon
{
    public class StudentDB : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=localhost, 1401;database=CollegeStudents;user id=sa;password=Pass@word;" +
             "TrustServerCertificate=true");
        }
        public DbSet<Student> Student { get; set; }
        public DbSet<Department> Department { get; set; }
        public DbSet<Course> Course { get; set; }
    }
}
