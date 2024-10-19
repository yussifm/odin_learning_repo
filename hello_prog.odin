package hello

import "core:fmt"

main :: proc() {

	fmt.println("Hello")

	CONST_Valu: u32 : 23
	fmt.printfln("%v", CONST_Valu)

	x: u32 = 32
	y := 54
	w: int = 4
	fmt.print(x, "\n")
	fmt.print(y, "\n")
	fmt.print(w, "\n")


	my_val := my_stru_TYpe {
		v_x = 32,
		v_y = 43,
	}

	fmt.print(my_val, "\n")
	fmt.print(my_val.v_x)

	// Loops
	for i := 0; i < 10; i += 1 {
		fmt.print(i, "\n");
	}


	result := added(20, 30);
	fmt.print("Added Result: ",result, "\n");

}


// Struct
my_stru_TYpe :: struct {
	v_x: u32,
	v_y: f32,
}

player :: struct{
	position: [3]f32,
    health: i8
}

// Procedures or Functions

added::proc(num1: int, num2: int) ->  int {
	return  num1 + num2;
}