package hello;

import "core:fmt";

main::proc(){
fmt.println("Hello");
fmt.printf("\nHello %d\n", other_function(34));
fmt.printf("\nHello %\n", read_configuration("helo", Never{}));
config, err := reading_configuration("text.json", "url");
fmt.println(config)
fmt.println(err)



}
