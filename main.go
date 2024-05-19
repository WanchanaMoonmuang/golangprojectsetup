package main

import (
    
    "fmt"
	"log"
	"os"
	"github.com/joho/godotenv"

    "demogo/greetings"
    
)

func main() {

    // Load the .env file
	err := godotenv.Load(".env")
	if err != nil {
		log.Fatalf("Error loading .env file: %v", err)
	}

	// Get the value of the variable
	myVariable := os.Getenv("MY_VARIABLE")
	if myVariable == "" {
		log.Fatalf("MY_VARIABLE not set in .env file")
	}

	// Print the variable
	fmt.Println("From .env: MY_VARIABLE =", myVariable)

    greetings.Hello()
    
}