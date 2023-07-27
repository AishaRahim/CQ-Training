using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeModel
{
    public class Employee
    {
        private static int empNo;
        public string empID { get; private set; }
        public string Name { get; set; }
        public double Salary { get; set; }
        public string EmployeeType { get; set; }

        static Employee()
        {
            empNo = 1000;
        }
        public Employee(string name, double salary, string empType)
        {
            
            Name = name;
            Salary = salary;
            EmployeeType = empType;
            empID = "Emp" + empNo;
            empNo++;
        }
        public void Display()
        {
            Console.WriteLine("Total number of employees:"+(empNo - 1000));
        }

    }
}
