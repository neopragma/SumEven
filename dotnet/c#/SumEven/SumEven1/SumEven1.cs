using System;
using System.Linq;

class SumEven1
{
    static void Main()
    {
        int sumEven = Enumerable.Range(0, 101) // 0 through 100
            .Select(x => x % 2 == 0 ? x : 0)   // map: keep evens, zero out odds
            .Aggregate(0, (sum, x) => sum + x); // reduce: sum all values

        Console.WriteLine(sumEven);
    }
}
