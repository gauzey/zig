const S = struct {
    a: fn () void,
    b: *S,
};
pub export fn entry() void {
    var s: S = undefined;
    _ = s;
}

// error
// backend=stage2
// target=native
//
// :6:12: error: variable of type 'tmp.S' must be const or comptime
// :2:8: note: struct requires comptime because of this field
// :2:8: note: use '*const fn() void' for a function pointer type
// :3:8: note: struct requires comptime because of this field
