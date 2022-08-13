fn remove_one_and_self(mut vec: Vec<u32>) -> Vec<u32> {
    vec.remove(0);
    vec.pop();
    vec
}

fn divisors(integer: u32) -> Result<Vec<u32>, String> {
    let mut result: Vec<u32> = Vec::new();
    let mut i: u32 = 1;
    loop {
        if i > integer {
            break;
        }

        if integer % i == 0 {
            result.push(i)
        }
        i = i + 1;
    };

    match result[..] {
        [1, integer] => Err(format!("{} is prime", integer)),
        _ => Ok(remove_one_and_self(result)),
    }
}

fn main() {
    println!("Result: {:?}", divisors(12))
}