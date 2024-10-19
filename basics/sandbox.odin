package hello;

import "core:fmt";

Player::struct {
    name:string, 
    health: int,
}


// main function
main::proc(){

my_num:= 5;
player: Player
player.health = 20

fmt.println(my_num)
fmt.println("Player Health: ",player.health)
func_passByValue(&my_num, 5)
func_passByValue(&player.health, 5)
fmt.println("Player Health: ", player.health)
fmt.println(my_num)
fmt.println("Hello");
fmt.printf("\nHello %d\n", other_function(34));
fmt.printf("\nHello %\n", read_configuration("helo", Never{}));
config, err := reading_configuration("text.json", "url");
fmt.println(config)
fmt.println(err)
arraysfunc()



}
