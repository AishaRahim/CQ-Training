using Microsoft.AspNetCore.Mvc;

namespace WebApplication3.Controllers
{
    [ApiController]
    [Route("[controller]")]

    public class StudentController : ControllerBase
    {
        [HttpPost]

        public void StdInsert(string name,string address, string Class, double Mark) 
        {
            StudentOper studentOper = new StudentOper();
            Student student = new Student();
            //student.Id = id;
            student.Name = name;
            student.Address = address;
            student.Class = Class;
            student.Mark = Mark;
            studentOper.AddStudentDetails(student);
        
        }

        [HttpGet]

        public void StdGet(int id) 
        {
            StudentOper studentOper = new StudentOper();
            studentOper.GetDetails(id);

        }

    }
    
    
}
