using System;

public class MyGenericComparer<T> where T : IComparable<T>
{
    public T Compare(T val1, T val2)
    {
        return val1.CompareTo(val2) >= 0 ? val1 : val2;
    }
}
