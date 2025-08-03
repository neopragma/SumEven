object SumEven {
  def main(args: Array[String]): Unit = {
    val sum = (0 to 100 by 2).sum
    val formatted = f"$sum%,d"  // Thousands separator
    println(s"Result: $formatted")
  }
}
