using EF_API.DBCon;
using EF_API.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EF_API.Controllers
{
    [ApiController]
    [Route("Controller")]
    public class HomeController : Controller
    {

        [HttpPost]       
        public void CoursePost(string name) 
        {
            StudentDB studentDB = new StudentDB();
            Course course = new Course();
            course.Name = name;
            studentDB.Add(course);
            studentDB.SaveChanges();
        }

        //[HttpPost]
        //public void StudentPost(string name,string address,int mark)
        //{
        //    StudentDB studentDB = new StudentDB();
        //    Course course = new Course();
        //    course.Name = name;
        //    studentDB.Add(course);
        //    studentDB.SaveChanges();
        //}

    }
}
