namespace EmployeeManagement
{
    internal class Employee
    {        
        public int CustId { get; set; }
        public string CustName { get; set; }
        public double CustSalary { get; set; }
        public Employee(int id) 
        {
            CustId = id;
        }
        public Employee(int id,string name) : this(id)
        {
            CustName = name;
        }
        public Employee(int id, string name,double salary) : this(id,name)
        {
            CustSalary = salary;
        }
        public void Display()
        {
            Console.WriteLine("Employee Details:");
            Console.WriteLine("Id : "+ CustId);
            Console.WriteLine("Name : "+ CustName);
            Console.WriteLine("Salary : "+ CustSalary);
        }

    }
}
