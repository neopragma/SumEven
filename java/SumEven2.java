import java.util.stream.IntStream;

public class SumEven2 {
    public static void main(String[] args) {
        int sumEven = IntStream.rangeClosed(0, 100)
                .filter(x -> x % 2 == 0)      // keep only even numbers
                .reduce(0, Integer::sum);     // sum them

        System.out.println(sumEven);
    }
}
