using System;
using System.Collections.Generic;
using System.Text;

namespace libFormula
{
    public class chuVi
    {
        public int a, b, c;
        public int p {  get; private set; }
        public void tamGiac()
        {
            p = (a + b + c);
        }
    }
}
