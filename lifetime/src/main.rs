fn main() {
    let a = String::from("hello");
    let b = String::from("world");
    println!("{}", lifetime(&a, &b));
}

fn lifetime(a: &str, b: &str) -> &str { // expected named lifetime parameter
    if a.len() > b.len() {    //  'a +
        a                    //  'a +
    } else {                //   'a -    //'b +
        b                               // 'b +
    }                                   // 'b -
}

fn lifetime_<'a>(a: &'a str, b: &'a str) -> &'a str {
    if a.len() > b.len() {  //  'a +
        a                   //  'a +
    } else {                //  'a +
        b                   //  'a +
    }                       //  'a +
}
