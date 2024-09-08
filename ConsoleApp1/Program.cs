using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args) 
        {
            Console.WriteLine("Tinh chu vi tam giac");
            int a, b, c;
            Console.Write("a: "); a = int.Parse(Console.ReadLine());
            Console.Write("b: "); b = int.Parse(Console.ReadLine());
            Console.Write("c: "); c = int.Parse(Console.ReadLine());
            int p = a + b + c;
            //testpush
            Console.WriteLine("p = {0} + {1} + {2} = {3}", a, b, c, p);

        }
    }
}