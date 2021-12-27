fn main() {
    let x = 1; // -------------+-- x start
    let max; // -------------+-- max start
    {
        //              |
        let y = 8; // -------------+-- y start
        max = max_num(&x, &y); //              |
    } // -------------+-- y over
    println!("max: {}", max); //              |
} // -------------+-- max, x over

fn max_num(x: &i32, y: &i32) -> &i32 {
    if x > y {
        &x
    } else {
        &y
    }
}

fn max_num_lifetime<'a>(x: &'a i32, y: &'a i32) -> &'a i32 {
    if x>y {
        x
    } else {
        y
    }
}
