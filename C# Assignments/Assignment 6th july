Console.WriteLine("Enter a string:");
string str = Console.ReadLine();

//Length of the string
Console.WriteLine("String length is " + str.Length);

//Index of a particular character
char[] strarray = str.ToCharArray();

Console.WriteLine("Enter the character:");
char ch = Convert.ToChar(Console.ReadLine());
for (int i = 0; i < str.Length; i++)
{
    if (strarray[i] == ch)
    {
        Console.WriteLine("Index of " + ch + " is " + i);
    }
}

//Reverse of the string
string rev = "";
for (int i = strarray.Length - 1; i > -1; i--)
{
    rev += strarray[i];
}
Console.WriteLine("Reverse of the string is " + rev);

//Append Hai at the beginning of the given string
string newstr = str.Insert(0, "Hai ");
Console.WriteLine("New string is " + newstr);

//Last character of the string
Console.WriteLine("Last character of the string " + str.Last());

//Replace ‘a’ by ‘_’
string rep = str.Replace('a', '_');
Console.WriteLine("After replacing " + rep);

//Calculate occurrence of given character in a string.
Console.WriteLine("Enter character to find occurence: ");
char occ = Convert.ToChar(Console.ReadLine());
int count = 0;
foreach (char c in str)
{
    if (c == occ)
    {
        count += 1;
    }
}
Console.WriteLine("occurrence of given character is " + count);

//Write a program to do the below datetime calculation
//Print the current date and time in different formats

DateTime currentDateTime = DateTime.Now;
Console.WriteLine(currentDateTime);

string formattedDateTime1 = currentDateTime.ToString("MM/dd/yyyy HH:mm");
Console.WriteLine(formattedDateTime1);

string formattedDateTime2 = currentDateTime.ToString("dddd, dd MMMM yyyy HH:mm");
Console.WriteLine(formattedDateTime2);

string formattedDateTime3 = currentDateTime.ToString("dddd, dd MMMM yyyy hh:mm tt");
Console.WriteLine(formattedDateTime3);


//Find the difference between two dates
DateTime date1 = new DateTime(2023, 7, 1);
DateTime date2 = DateTime.Now;
var diff = date2 - date1;
Console.WriteLine("Difference in Days: {0}", diff.Days);
Console.WriteLine("Difference in Hours: {0}", diff.Hours);
Console.WriteLine("Difference in Miniutes: {0}", diff.Minutes);
Console.WriteLine("Difference in Seconds: {0}", diff.Seconds);

//Display Day, Month, Year of a given Date
DateTime date1 = new DateTime(2023, 7, 1);
string disp = date1.ToString("dddd MMMM, yyyy");
Console.WriteLine(disp);

//To a given Date, add 10 days
DateTime date1 = new DateTime(2023, 7, 1);
Console.WriteLine("Date before addition is " + date1);
Console.WriteLine("Date after addition is " + date1.AddDays(10));

//Rewrite the above program using stringbuilder

using System.Text;
using System.Threading.Channels;

StringBuilder sb = new StringBuilder();
sb.Append("this is in a stringbuilder object");
Console.WriteLine(sb);

//Index of a particular character
Console.WriteLine("Index of 'i' is: ");
Console.WriteLine(sb.ToString().IndexOf("i"));

//Length of the string
Console.WriteLine("Length of the string: ");
Console.WriteLine(sb.Length);

//Replace ‘a’ by ‘_’
Console.WriteLine("after replacing");
Console.WriteLine(sb.Replace("a", "_"));



//reverse of the string
Console.WriteLine("reverse of the string");
StringBuilder sb2 = new StringBuilder();

for (int i = sb.Length - 1; i > 0; i--)
{
    sb2.Append(sb[i]);
}
Console.WriteLine(sb2);


//Append Hai at the beginning of the given string
Console.WriteLine("Append Hai at the beginning of the given string:");
Console.WriteLine(sb.Insert(0, "Hai "));

//Last character of the string
Console.WriteLine("Last character of the string: ");
Console.WriteLine(sb[sb.Length - 1]);

Console.WriteLine("Enter char to find occurence: ");
char chh = char.Parse(Console.ReadLine());
int c = 0;
for (int i = 0; i < sb.Length; i++)
{
    if (sb[i] == chh)
    {
        c = c + 1;
    }
}
Console.WriteLine("Occurence is: " + c);

//Single Calculate  method, Calculate out add, out sub, out mult, out div
using System;
namespace ConsoleApp67
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Calc(20, 10, out float add, out float sub, out float mult, out float div);
            Console.WriteLine("sum is: " + add);
            Console.WriteLine("diff is: " + sub);
            Console.WriteLine("product is: " + mult);
            Console.WriteLine("quotient is: " + div);
        }
        public static void Calc(float x, float y, out float add, out float sub, out float mult, out float div)
        {
            add = x + y;
            sub = x - y;
            mult = x * y;
            div = x / y;
        }

    }
}

