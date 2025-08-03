using System;
using System.Linq;

class SumEven2
{
    static void Main()
    {
        int sumEven = Enumerable.Range(0, 101)      // 0 to 100 inclusive
            .Where(x => x % 2 == 0)                 // filter: only even numbers
            .Aggregate(0, (sum, x) => sum + x);     // reduce: sum the values

        Console.WriteLine(sumEven);
    }
}
