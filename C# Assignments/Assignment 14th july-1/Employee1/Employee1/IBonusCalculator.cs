using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee1
{
    public interface IBonusCalculator
    {
        public double CalculateBonus(Employee ob);
    }
}
