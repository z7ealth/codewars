fn make_readable(seconds: u32) -> String {
    const SEC_IN_MIN: u32 = 60;
    const SEC_IN_HOUR: u32 = 3600;

    let mut secs: String = ((seconds % SEC_IN_HOUR) % SEC_IN_MIN).to_string();

    if secs.chars().count() < 2 {
        secs = format!("0{}", secs)
    }

    let mut min: String = ((seconds % SEC_IN_HOUR) / SEC_IN_MIN).to_string();

    if min.chars().count() < 2 {
        min = format!("0{}", min)
    }

    let mut hours: String = (seconds / SEC_IN_HOUR).to_string();

    if hours.chars().count() < 2 {
        hours = format!("0{}", hours)
    }

    format!("{}:{}:{}", hours, min, secs)
}

fn main() {
    println!("{:?}", make_readable(3600))
}