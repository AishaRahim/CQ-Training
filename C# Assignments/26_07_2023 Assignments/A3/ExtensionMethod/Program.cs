using ExtensionMethod;
using System;

class Program
{
    static void Main()
    {
        string inputText = "apple is a fruit, and an apple a day keeps the doctor away.";
        string wordToCount = "apple";

        int count = inputText.IsWordCount(wordToCount);
        Console.WriteLine($"The word '{wordToCount}' appears {count} times in the input text.");
    }
}
