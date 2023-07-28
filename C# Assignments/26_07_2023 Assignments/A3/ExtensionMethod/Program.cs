
using ExtensionMethod;

Console.WriteLine("Enter a sentence: ");
string inputText =Console.ReadLine();
Console.WriteLine("Enter the word:");
string wordToCount = Console.ReadLine();

int count = inputText.IsWordCount(wordToCount);
Console.WriteLine($"The word '{wordToCount}' appears {count} times in the input text.");


