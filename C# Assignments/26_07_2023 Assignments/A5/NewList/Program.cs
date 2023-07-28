using System;
using System.Collections.Generic;


int[] arr = { 1, 2, 3, 4, 5 };

List<int> ints = new List<int>();
for (int i = 0; i < arr.Length; i++)
{
    int value = arr[i] * 2;
    ints.Add(value);
}

Console.WriteLine("After processing:");
foreach (int i in ints)
{
    Console.WriteLine(i);
}