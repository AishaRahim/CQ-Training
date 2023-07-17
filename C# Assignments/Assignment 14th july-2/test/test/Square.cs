using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace test
{
    public class Square : Shape
    {
        public int Lenght { get; set; }
        public Square(int sides,int len) : base(sides)
        {
            Lenght = len;
        }

        public override double CalculateArea()
        {
            double area = Lenght * Lenght;
            return area;
        }
    }
}
