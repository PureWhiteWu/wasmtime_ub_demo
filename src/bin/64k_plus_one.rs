fn main() {
    unsafe {
        let address = (64 * 1024) as *mut u8;
        let n = *address;
        println!("{}", n);
    }
}
