package hello

import "core:fmt"


other_function :: proc(n: int) -> int{ 
return  n * 3
}

Configuration :: struct {
    filename:string,
    interval: int, 
    url: string,
    calculated: f32, 
    myUnExm: myUnionVal,
}

myUnionVal::union {
    Never, 
    Once,
    Started
}
Never::struct {

}
Once::struct {}

Started::struct {}

// read_configuration :: proc(filename: string) -> Configuration {
//     config: Configuration

//     return config
// }
read_configuration :: proc(filename: string, un: myUnionVal) -> (config: Configuration) 
{
    config.myUnExm = un;
    switch i in config.myUnExm{
        case Never:
            fmt.println("Never")
        case Once:
            fmt.println("Once")
        case Started:
            fmt.println("Started")
    }
    return config
}