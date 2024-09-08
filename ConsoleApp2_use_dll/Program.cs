using libFormula;
using System;
using System.Collections.Generic;
using System.Text;

namespace ConsoleApp2_use_dll
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Tinh chu vi tam giac use dll");
            int a, b, c;
            Console.Write("a: "); a = int.Parse(Console.ReadLine());
            Console.Write("b: "); b = int.Parse(Console.ReadLine());
            Console.Write("c: "); c = int.Parse(Console.ReadLine());

            libFormula.chuVi tinh; // khai bao doi tuong
            tinh = new libFormula.chuVi(); // cap phat
            tinh.a = a; tinh.b = b; tinh.c = c; // gan
            tinh.tamGiac(); // goi 1 phuong thuc
            int p = tinh.p;

            Console.WriteLine("p = {0} + {1} + {2} = {3} ", a, b, c, p);
        }
    }
}
