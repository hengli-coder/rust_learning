

fn main() {
    let s1: String = String::from("hello"); //声明一个变量
    borrow(&s1); //调用函数，传递参数，同时将 “hello” 的所有权借给s2
    println!("{}",s1); // hello
}

fn borrow(s2: &String) {             //获取所有权
    // 编译报错，”cannot borrow `*s2` as mutable, as it is behind a `&` reference“
    s2.push_str("world");
    println!("{}",s2);              //hello
}                                   //s2生命周期到此结束，归还所有权


