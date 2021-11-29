use std::fmt::{Display,Formatter,Result};
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

fn main() {
    let (data,ok) = reverse((10,false));
    println!("{},{}",&data,&ok);
    let m = Matrix(1.0,2.0,3.0,4.0);
    println!("{}",m);
}