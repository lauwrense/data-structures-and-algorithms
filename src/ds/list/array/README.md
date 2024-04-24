# Array

A data structure that is a contigous block of memory.

> [!Note]
> This data structure is typically implemented as a primitive data type

## Representation

![Array Representation](../../../assets/ArrayRepresentation.png)

An array has fields `ptr`, which points to a location in memory specifically the
*first element*; and `len`, which dictates the capacity of the array. 

```c
struct array<T> {
    const ptr: *T,
    const len: unsigned interger,
}
```

Above is a generic representation of an array data structure. `T` is the data type
of each of the elements of the array.

> [!Important]
> Since we have information on `T` on compile time, `T` dictates the amount of
> memory space each elements take.

Assuming that `T` is of type `void`


## Operations

1. Element Access

    Given an index `i`, access the element in `i`. Throws an error if `i > len`

    |       | Worst | Average | Best
    | ---   |  ---  |   ---   | ---
    | Time  | `O(1)` | `O(1)` | `O(1)`
    | Space | `O(1)` | `O(1)` | `O(1)`

> [!Note]
> The start index is dependent on the language specification. It may usually start
> at either `0` or `1`. Thus, will determine whether to throw an error at `i >= len`
> (`0`-index) or `i > len` (`1`-index).

> [!Tip]
> This operation is usually alias to `arr[i]`, where `arr` is an array

## Implementations

Zig

```rust
{{#include array.zig}}
```


## Variants




## Author



## Referrences


