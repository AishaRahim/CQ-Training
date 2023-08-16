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

        public void post(string Name)
        {
            Location location = new Location();
            location.Name = Name;
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
    }
}


