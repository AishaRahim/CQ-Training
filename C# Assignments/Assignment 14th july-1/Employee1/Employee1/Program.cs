﻿using Employee1;
DateTime dateTime = new DateTime(2023,07,01);
Employee ob = new Employee(1,"Vaishnav",dateTime , "Dev", 30000,'O');

IBonusCalculator ibc = null;

if (ob.JobType=='P')
{
     ibc = new PermanentEmployeeBonusCalulator();
}
else if (ob.JobType=='C')
{
    ibc = new ContractEmployeeBonusCalculator();
}
else
{
    Console.WriteLine("error");
    
}

double? Bonus = ibc?.CalculateBonus(ob);

Console.WriteLine(ob.Name);
Console.WriteLine("bonus is:"+Bonus);
