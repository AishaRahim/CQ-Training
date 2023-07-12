using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    internal class Student
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Mark { get; set; }
        public char Grade 
        {
            get
            {
                if (Mark >= 90)
                {
                    return 'A';
                }
                else if (Mark >= 80 && Mark < 90)
                {
                    return 'B';
                }
                else if (Mark >= 70 && Mark < 80)
                {
                    return 'C';
                }
                else
                    return 'D';
            }
        }

        public Student(int SId, string SName,int SMark) 
        {
            Id = SId;
            Name = SName;
            Mark = SMark;          
        }
        public void Display()
        {
            Console.WriteLine(Name);
            Console.WriteLine(Mark);
            Console.WriteLine(Grade);
        }
    }
}
