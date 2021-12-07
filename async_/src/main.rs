
use async_std::task::{sleep, spawn};
use std::time::Duration;

async fn sleeps() {
    for i in 1..=10 {
        println!("Sleeps {}", i);
        sleep(Duration::from_millis(2000)).await;
    }
}

async fn interrupts() {
    for i in 1..=10 {
        println!("Interrupts {}", i);
        sleep(Duration::from_millis(1000)).await;
    }
}

#[async_std::main]
async fn main() {
    let sleeps = spawn(sleeps());           //创建任务
    let interrupts = spawn(interrupts());   //创建任务

    interrupts.await;
    sleeps.await;
}