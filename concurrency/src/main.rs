use std::thread;
use std::sync::mpsc;

fn main() {
    let (tx, rx) = mpsc::channel(); //创建channel

    thread::spawn(move || {
        let val = String::from("hi");
        tx.send(val).unwrap(); //发送数据
    });

    let s = rx.recv().unwrap();  //阻塞接收数据
    println!("{}",s); //输出 hi
}
