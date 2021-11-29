fn main() {
    unsafe {
        let address = (1024 * 1024 - 5) as *mut i32;
        let n = *address;
        println!("{}", n);
    }
}
