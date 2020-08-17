package main
import (
    "net/http"
    "log"
    "github.com/onetwopunch/gsa-encrypter/cfn/encrypter"
)
// Used for local testing
func main() {
	http.HandleFunc("/encrypt", encrypter.GenerateAndEncrypt)
	log.Println("Starting server at localhost:8080...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
