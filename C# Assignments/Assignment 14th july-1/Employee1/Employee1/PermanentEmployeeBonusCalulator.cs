using Employee1;

public class PermanentEmployeeBonusCalulator : IBonusCalculator
{
    public double CalculateBonus(Employee ob)
    {
        return ob.Salary * 20 / 100;
    }
}

