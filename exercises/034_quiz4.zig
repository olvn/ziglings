//
// Quiz time. See if you can make this program work!
//
// Solve this any way you like, just be sure the output is:
//
//     my_num=42
//
const std = @import("std");

const NumError = error{IllegalNumber};

pub fn main() void {
    const stdout = std.io.getStdOut().writer();

    const my_num: u32 = if (getNumber()) |num| num else |_| 42;

    stdout.print("my_num={}\n", .{my_num}) catch undefined;
}

// This function is obviously weird and non-functional. But you will not be changing it for this quiz.
fn getNumber() NumError!u32 {
    if (false) return NumError.IllegalNumber;
    return 42;
}
