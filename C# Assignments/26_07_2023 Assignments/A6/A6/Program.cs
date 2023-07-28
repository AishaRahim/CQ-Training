using A6;
using System.Collections.Generic;
using System.Linq;

List<Student> stdlist = new List<Student>();
stdlist.Add(new Student(1, "John Doe", 85));
stdlist.Add(new Student(2, "Liam Smith", 70));
stdlist.Add(new Student(3, "Mary James", 62));
stdlist.Add(new Student(4, "Davide James", 55));
stdlist.Add(new Student(5, "Lionel Messi", 100));
stdlist.Add(new Student(6, "Ronaldo", 90));
stdlist.Add(new Student(7, "Neymar", 85));

//Find the student with max mark
Student s1 = stdlist.OrderByDescending(s => s.Mark).FirstOrDefault();
Console.WriteLine("Student with the highest mark:  " + s1.Name);

//List the student whose mark is greater than 75
List<Student> s2 = stdlist.Where ( s => s.Mark > 75).ToList();
Console.WriteLine("\nStudents with marks above 75:");
foreach (var student in s2)
{
    Console.WriteLine("ID: " + student.Id);
    Console.WriteLine("Name: " + student.Name);
    Console.WriteLine("Mark: " + student.Mark);
    Console.WriteLine();
}


//List the student whose name ends with ‘s’
List<Student> s3 = stdlist.Where(s => s.Name.EndsWith('s')).ToList();
Console.WriteLine("\nStudents whose name ends with ‘s’");

foreach (var student in s3)
{
    Console.WriteLine("ID: " + student.Id);
    Console.WriteLine("Name: " + student.Name);
    Console.WriteLine("Mark: " + student.Mark);
    Console.WriteLine();
}

//Find the student whose name is ‘Lionel Messi’
Student s4 = stdlist.Where(s => s.Name.Equals("Lionel Messi")).FirstOrDefault();
Console.WriteLine("Id of student with the name 'Lionel Messi'"+ s4.Id);
Console.WriteLine("and his mark is: "+ s4.Mark);

//Display the mark of the student whose name is ‘Ronaldo’
Student s5 = stdlist.Where(s => s.Name.Equals("Ronaldo")).FirstOrDefault();
Console.WriteLine("\nMarks for Ronaldo is: "+s5.Mark);
