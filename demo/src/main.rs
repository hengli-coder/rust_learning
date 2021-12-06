fn main() {
   let a = 100;
    {
        let x = a;
    }

    let v: isize = 10;

    println!("{}",x)
}

fn owner(i: &str) {
    println!("{}",i);
}