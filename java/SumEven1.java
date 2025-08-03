import java.util.stream.IntStream;

public class SumEven1 {
    public static void main(String[] args) {
        int sumEven = IntStream.rangeClosed(0, 100)
                .map(x -> x % 2 == 0 ? x : 0) // map odd numbers to 0
                .reduce(0, Integer::sum);    // reduce to sum

        System.out.println(sumEven);
    }
}
