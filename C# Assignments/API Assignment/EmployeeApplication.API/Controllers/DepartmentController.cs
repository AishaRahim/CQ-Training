using EmployeeApplication.Model.Model;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Mvc;

namespace EmployeeApplication.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DepartmentController : Controller
    {
        private readonly EmployeeApplicationContext? dbContext;

        public DepartmentController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddDepartment")]
        public void post(DepartmentClone depC)
        {
            Department department = new Department
            {
                Name = depC.Name,
                locationId = depC.locationId
            };
            dbContext?.Add(department);
            dbContext?.SaveChanges();
        }

        [HttpDelete("Delete")]
        public void delete(int id)
        {
            Department department = new Department();
            department.Id = id;
            dbContext?.Remove(department);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int id)
        {
            return Ok(dbContext?.Department.Find(id));
        }

        [HttpGet("GetAll")]
        public IActionResult GetAll()
        {
            return Ok(dbContext?.Department);
        }

        [HttpPut("Update")]
        public void put(DepartmentClone departmentClone,int id)
        {
            var x = dbContext?.Department.Find(id);
            x.Name = departmentClone.Name;
            x.locationId = departmentClone.locationId;
            dbContext?.SaveChanges();
        }

        //public void put(int id, string name)
        //{
        //    var x = dbContext?.Location.Find(id);
        //    x!.Name = name;
        //    dbContext?.SaveChanges();
        //}
    }
}
