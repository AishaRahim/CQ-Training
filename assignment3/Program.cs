﻿//Print first 20 numbers using for loop
for (int i = 1; i <=20; i++)
{
   Console.WriteLine(i);
}


//Print odd numbers less than 50 using while loop
int n = 1;
while (n <50)
{
    Console.WriteLine(n);
    n += 2;
}


//Large amount 3 numbers
int[] num = {55,6,7};
int large;

if (num[0] > num[1])
{
    large = num[0];
}
else
{
    large = num[1];
}
if (large > num[2])
{
    Console.WriteLine("largest number: " + large);
}
else
{
    Console.WriteLine("largest number: " + num[2]);
}



//Reverse of a number

Console.WriteLine("Enter a number:");
int num = Convert.ToInt32(Console.ReadLine());

int rem, reverse=0;
while (num != 0)
{
    rem = num % 10;
    reverse = reverse * 10 + rem;
    num = num / 10;
}
Console.WriteLine("reversed number is "+reverse);


//Sum of the digits of a number
Console.WriteLine("Enter a number:");
int num = Convert.ToInt32(Console.ReadLine());

int rem, sum = 0;
while (num != 0)
{
    rem = num % 10;
    sum=sum + rem;
    num = num / 10;
}
Console.WriteLine("sum: " + sum);


//Sum of the squares of the digits of a number
Console.WriteLine("Enter a number:");
int num = Convert.ToInt32(Console.ReadLine());

int rem, sum = 0;
while (num != 0)
{
    rem = num % 10;
    sum = sum + rem*rem;
    num = num / 10;
}
Console.WriteLine("sum: " + sum);


//Check prime number
Console.WriteLine("check if prime. enter a number:");
int num = Convert.ToInt32(Console.ReadLine());
int c=0;
for (int i = 2; i < num/2; i++)
{
    if(num%i==0)
    {
        c += 1;
    }
}
if(c==0)
{
    Console.WriteLine("prime");
}
else
{
    Console.WriteLine("Not prime");
}


//Print all prime numbers below 100

int j;
for (int num = 2; num < 100; num++)
{
    for ( j = 2; j < num; j++)
    {
        if (num % j == 0)
        {
            break;
        }
        
    }
    if (num == j)
    {
        Console.WriteLine(num);
    }
}


//Fibonacci series
int n1=0, n2=1, n3, i, limit;
Console.WriteLine("Enter the limit");
limit = int.Parse(Console.ReadLine());
Console.WriteLine(n1);
Console.WriteLine(n2);

for ( i = 2; i < limit; ++i)
{
    n3 = n2 + n1;
    Console.WriteLine(n3+ " ");
    n1 = n2;
    n2 = n3;
}


//Check palindrome 

int num, rem, sum = 0, temp;
Console.WriteLine("Enter the number");
num = int.Parse(Console.ReadLine());
temp = num;
while (num != 0)
{
    rem = num % 10;
    sum = sum * 10 + rem;
    num = num / 10;
}
if(temp==sum)
{
    Console.WriteLine("number is palindrome");
}
else
{
    Console.WriteLine("number is not palindrome");
}



//Tax calculation program, input the amount and display the tax
Console.WriteLine("Enter the amount");
double amount = double.Parse(Console.ReadLine());

double tax;
if (amount < 10000)
{
    tax = amount * 5 / 100;
    Console.WriteLine("Tax is: " + tax);

}
else if (amount > 10000 && amount <15000)
{
    tax = amount * 7.5 / 100;
    Console.WriteLine("Tax is: " + tax);


}
else if (amount > 15000 && amount < 20000)
{
    tax = amount * 10 / 100;
    Console.WriteLine("Tax is: " + tax);

}
else if (amount >20000 && amount < 25000)
{
    tax = amount * 12.5 / 100;
    Console.WriteLine("Tax is: " + tax);

}
else if (amount > 25000)
{
    tax = amount * 15 / 100;
    Console.WriteLine("Tax is: " + tax);

}


//Input a character from console and display the sports name corresponding to it
Console.WriteLine("Enter a character");
tryagain:  char ch = char.Parse(Console.ReadLine());

switch(ch)
{
    case 'c':
        {
            Console.WriteLine("CRICKET");
            break;
        }
    case 'f':
        {
            Console.WriteLine("FOOTBALL");
            break;
        }
    case 'h':
        {
            Console.WriteLine("HOCKEY");
            break;
        }
    case 't':
        {
            Console.WriteLine("TENNIS");
            break;
        }
    case 'b':
        {
            Console.WriteLine("BADMINTON");
            break;
        }
    default:
        {
            Console.WriteLine("invalid entry!!! Please try again");
            goto tryagain;
        }
}


//Write a program to print the below pattern
/*
*
**
***
****
*****
*/

for (int i = 0; i < 5; i++)
{
    for (int j = 0; j <= i; j++)
    {
        Console.Write("* ");
    }
    Console.Write("\n");
}




