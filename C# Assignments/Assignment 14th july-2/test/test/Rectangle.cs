using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    public class Rectangle : Shape
    {
        public int Lenght { get; set; }
        public int Breadth { get; set; }
        public Rectangle(int sides,int len,int brd) : base(sides)
        {
            NoOfSides = sides;
            Lenght = len;
            Breadth = brd;
        }

        public override double CalculateArea()
        {
            double area = Lenght * Breadth;
            return area;
        }
    }
}
