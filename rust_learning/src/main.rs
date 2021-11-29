

use std::{sync::mpsc, thread::*};

fn main() {
    println!("{1}--{0}",0,"heng");
    let (tx,rx) = mpsc::channel();
    thread::spawn(move || {
        tx.send(String::from("hello"));
    })

    let data = rx.recv().unwrap();
    print!("{}",&data);
}