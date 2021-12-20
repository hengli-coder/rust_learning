
use std::fmt::Display;

pub fn main() {
    let int_param = 0;
    let float_param = 1.2;
    visit(int_param);
    visit(float_param);
}

fn visit<T:Display>(a:T) {
    println!("{}",a);
}