using EmployeeApplication.Model.Model;
using EmployeeApplication.Repository.Context;
using Microsoft.AspNetCore.Mvc;

namespace EmployeeApplication.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]

    public class LocationController : ControllerBase
    {
        private readonly EmployeeApplicationContext? dbContext;

        public LocationController(EmployeeApplicationContext dbContext)
        {
            this.dbContext = dbContext;
        }

        [HttpPost("AddLocation")]
        public void post(Location location)
        {
            dbContext?.Add(location);
            dbContext?.SaveChanges();
        }

        [HttpDelete("Delete")]
        public void delete(int id)
        {
            Location location = new Location();
            location.Id = id;
            dbContext?.Remove(location);
            dbContext?.SaveChanges();
        }

        [HttpGet("GetById")]
        public IActionResult Get(int id) 
        {
            Location location = new Location();
            return Ok(dbContext?.Location.Find(id));
        }

        [HttpGet("GetAll")] 
        public IActionResult GetAll() 
        {
            Location location = new Location();
            return Ok(dbContext?.Location);
        }

        [HttpPut]
        public void put(int id, string name) 
        {
            var x = dbContext?.Location.Find(id);
            x!.Name = name;
            dbContext?.SaveChanges();
        }
    }
}


