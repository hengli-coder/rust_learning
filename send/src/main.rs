use std::rc::Rc;
use std::sync::{Arc, mpsc};
use std::thread;
use std::marker::{Send,Sync};

#[derive(Debug)]
struct Phone {
    charge: isize,
    width: isize,
    name: String,
}

#[derive(Debug)]
struct IPhone {
    p: Phone,
    r: Rc<i32>,
}

unsafe impl Send for IPhone {

}

unsafe impl Sync for IPhone {

}

fn main() {
    let p = &mut IPhone{ p: Phone {
        charge: 0,
        width: 0,
        name: "".to_string()
    },r:Rc::new(10)};

    Arc::new(10);
    let (tx,rx) = mpsc::channel();
    let d = thread::spawn(|| {
        tx.send(p).unwrap();
    });
    let b = rx.recv().unwrap();
    println!("{:?}",b);
}



