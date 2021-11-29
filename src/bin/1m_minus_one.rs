fn main() {
    unsafe {
        let address = (1024 * 1024 - 2) as *mut u8;
        let n = *address;
        println!("{}", n);
    }
}
