//usr/bin/env go run "$0" "$@"; exit "$?"
package main
import (
	"flag"
	"fmt"
	"os"
)

// This is a Go script seed.
// Use it as a template for your own Go script.

func main() {
	name := flag.String("n", "world", "Specify the user's name.")

	flag.Usage = func() {
		fmt.Fprintf(os.Stderr, "usage: %s [options]\n\nPrints a message as an example of parsing CLI args in Go.\n\nOptions:\n", os.Args[0])

		flag.PrintDefaults()
	}
	flag.Parse()

	fmt.Printf("Hello %s!\n\nYou ran the Go seed script!\n", *name)
}
