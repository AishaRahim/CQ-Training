using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    public abstract class Shape
    {
        public int NoOfSides { get;  set; }
        public Shape(int sides) 
        {
            NoOfSides = sides;
        }
        public abstract double CalculateArea();
        public void DisplayNoOfSides()
        {
            Console.WriteLine(NoOfSides);
        }
    }
}
