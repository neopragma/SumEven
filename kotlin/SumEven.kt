/*
 * kotlinc SumEven.kt -include-runtime -d SumEven.jar 
 * java -jar SumEven.jar
 */

fun main() {
    val sum = (0..100 step 2).sum()
    println("Result: $sum")
}
