

fn main() {
    let s1: String = String::from("hello"); //声明一个变量
    owner(s1); //调用函数，传递参数，同时转移了 “hello” 的所有权
    println!("{}",s1); //编译报错
}

fn owner(s2: String) {  //获取所有权                     `a ++
    println!("{}",s2); //输出s2的内容到控制台               ++
}                     //s2生命周期到此结束，自动释放对应内存  --


