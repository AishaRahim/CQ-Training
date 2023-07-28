MyGenericComparer<int> comparer = new MyGenericComparer<int>();
int largestInt = comparer.Compare(10, 20);
Console.WriteLine("Largest integer: " + largestInt);

MyGenericComparer<string> comparerString = new MyGenericComparer<string>();
string largestString = comparerString.Compare("apple", "orange");
Console.WriteLine("Largest string: " + largestString);
    

