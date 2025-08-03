fn main() {
    let sum: i32 = (0..=100)
        .filter(|x| x % 2 == 0)
        .sum();

    println!("Result: {}", sum);
}

