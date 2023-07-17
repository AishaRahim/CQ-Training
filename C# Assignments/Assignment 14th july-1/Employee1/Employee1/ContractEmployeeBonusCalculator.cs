using Employee1;

public class ContractEmployeeBonusCalculator : IBonusCalculator
{
    public double CalculateBonus(Employee ob)
    {
        return ob.Salary * 15/100;
    }
}

