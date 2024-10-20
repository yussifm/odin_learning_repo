package hello

import "core:fmt"


// Arrays 
arraysfunc :: proc() {
	fmt.print("=================== Arrrays =================\n\n")
	position: [4]f32
	position = {2, 5, 7, 12}

	fmt.println("First element: ", position.x)
	fmt.println("Second element: ", position.y)
	fmt.println("Third element: ", position.z)
	fmt.println("fourth element: ", position.w)

    // Zero indexing can also be used eg: position[0]

    //swizzle 
    vector2d:: [2]f32
    vec2D_pos :vector2d

	// Dynamic Array 
	dyn_array: [dynamic]int

	// add to dynamic array
	append(&dyn_array, 2)

	delete(dyn_array)
}
