
use std::fs::*;
use redis::*;

fn main() {
    let cli = redis::Client::open("").unwrap();
    let mut conn = cli.get_connection().unwrap();
    let data : &str= conn.get("").unwrap();
}