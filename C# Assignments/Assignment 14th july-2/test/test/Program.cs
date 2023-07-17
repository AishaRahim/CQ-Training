using System.Drawing;
using test;
Triangle triangle = new Triangle(3,3,4,5);
Console.WriteLine("sides:"+triangle.NoOfSides);
Console.WriteLine("Area of triangle is "+ triangle.CalculateArea());
Square square = new Square(4, 4);
Console.WriteLine("sides:" + square.NoOfSides);
Console.WriteLine("Area of Square is " + square.CalculateArea());
test.Rectangle rectangle = new test.Rectangle(4, 5, 6);
Console.WriteLine("sides:" + rectangle.NoOfSides);
Console.WriteLine("Area of Rectangle is " + rectangle.CalculateArea());

