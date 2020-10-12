//usr/bin/env go run "$0" "$@"; exit "$?"
package main

import (
	"flag"
	"fmt"
)

func main() {

	typeSeed := flag.String("type", "tomato", "Specify the type of seed")
	flag.Parse()

	fmt.Printf("You planted a %s seed!\n", *typeSeed)

}
