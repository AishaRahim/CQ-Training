using EmployeeApplication.Model.Model;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Mvc;

namespace EmployeeApplication.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : Controller
    {
        private readonly EmployeeApplicationContext? dbContext;

        public EmployeeController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddEmployee")]
        public void post(EmployeeClone empC)
        {
            Employee emp = new Employee
            {
                FirstName = empC.FirstName,
                LastName = empC.LastName,
                EMail = empC.EMail,
                Phone = empC.Phone,
                departmentId = empC.departmentId
            };
            dbContext?.Add(emp);
            dbContext?.SaveChanges();
        }

        [HttpDelete("Delete")]
        public void delete(int id)
        {
            Employee employee = new Employee();
            employee.Id = id;
            dbContext?.Remove(employee);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int id)
        {
            Employee employee = new Employee();
            return Ok(dbContext?.Employees.Find(id));
        }

        

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            Employee employee = new Employee();
            return Ok(dbContext?.Employees);
        }

        [HttpPut("Update")]
        public void put(EmployeeClone employeeClone,int id)
        {
            var x = dbContext?.Employees.Find(id);
            x.FirstName = employeeClone.FirstName;
            x.LastName = employeeClone.LastName;
            x.EMail = employeeClone.EMail;
            x.Phone = employeeClone.Phone;
            x.departmentId = employeeClone.departmentId;
            dbContext?.SaveChanges();
        }
        //public void put(Employee emp)
        //{
        //    var x = dbContext?.Employees.Find(emp.Id);
        //    x.FirstName = emp.FirstName;
        //    x.LastName = emp.LastName;
        //    x.EMail = emp.EMail;
        //    x.Phone = emp.Phone;
        //    x.departmentId = emp.departmentId;
        //    dbContext?.SaveChanges();
        //}

        //public void put(Employee emp, int id, string FName, string LName, string emaiId, int phoneNumber, int deptId)
        //{
        //    var x = dbContext?.Employees.Find(id);
        //    x.FirstName = FName;
        //    x.LastName = LName;
        //    x.EMail = emaiId;
        //    x.Phone = phoneNumber;
        //    x.departmentId = deptId;
        //    dbContext?.SaveChanges();
        //}
    }
}
