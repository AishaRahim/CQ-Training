using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ExtensionMethod
{
    public static class StringExtension
    {
        public static int IsWordCount(this string input, string word)
        {
            int c = 0;
            string[] words = input.Split(' ');
            for (int i = 0; i < words.Length; i++)
            {
                if (words[i].Equals(word))
                {
                    c++;
                }
            }
            return c;
        }
    }
}
