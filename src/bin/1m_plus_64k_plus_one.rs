fn main() {
    unsafe {
        let address = (1024 * 1024 + 64 * 1024) as *mut u8;
        let n = *address;
        println!("{}", n);
    }
}
