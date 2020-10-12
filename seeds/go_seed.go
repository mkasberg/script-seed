//usr/bin/env go run "$0" "$@"; exit "$?"
package main

import (
	"flag"
	"fmt"
	"os"
)

func main() {

	typeSeed := flag.String("type", "tomato", "Specify the type of seed")
	flag.Usage = func() {

		fmt.Fprintf(os.Stderr, "usage: %s [options]\n\nThis is a Golang script seed. Customize it to get started quickly with Golang.\n\nOptions:\n\n", os.Args[0])

		flag.PrintDefaults()
	}
	flag.Parse()

	fmt.Printf("You planted a %s seed!\n", *typeSeed)

}
