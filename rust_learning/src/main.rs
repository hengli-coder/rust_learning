use std::{fmt::{Display,Formatter,Result}, slice::{self, SliceIndex}};
struct Matrix(f32,f32,f32,f32);

impl Display for Matrix {
    fn fmt(&self, f: &mut Formatter) -> Result {
        println!("go to this step");
        write!(f,"({} {})\n({} {})", self.0,self.1,self.2,self.3)
    }
}

fn reverse(pair:(i32,bool))->(bool,i32) {
    println!("this step");
    println!("{},{}",pair.0,pair.1);
    return (pair.1, pair.0);
}

fn visit(v:&mut [i32]) {
    let opt = v.get(4);
    match opt {
        Some(opt)=>print!("{}",&opt),
        None=>println!("no data"),
    }
   // print!("{:?}",v[4]);
}

fn owner() {
    let v = 10;
    
    let b = v;

    println!("{},{}",v,b);
}

fn main() {
    let (data,ok) = reverse((10,false));
    println!("{},{}",&data,&ok);
    let m = Matrix(1.0,2.0,3.0,4.0);
    println!("{}",m);
    let mut v = vec![1,2,3];
    visit(v.as_mut_slice());
    owner();
}