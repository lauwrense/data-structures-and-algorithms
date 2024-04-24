// Primitive
const an_array = [5]u32{ 1, 2, 3, 4, 5 };

// As a generic data type
pub fn Array(comptime T: type, length: u32) !type {
    return struct {
        ptr: [*]T,
        pub const len: u32 = length;

        pub fn access(i: u32) !*T {
            
        }
    };
}
