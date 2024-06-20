package main

import (
    "encoding/json"
    "log"
    "net/http"
    "github.com/gorilla/mux"
)

// função principal
func main() {
    router := mux.NewRouter()
	router.HandleFunc("/reduceURL", ReduceURL).Methods("PUT")
    router.HandleFunc("/{shortcode}", RedirectURL).Methods("GET")
    log.Fatal(http.ListenAndServe(":8000", router))
}

func ReduceURL(w http.ResponseWriter, r *http.Request) {
	// Get full-url

	// Generate shortcode

	// Store in Redis: shortcode:full-url

	// Send back shortcode

}

func RedirectURL(w http.ResponseWriter, r *http.Request) {
	// Get shortcode

	// Search in Redis: shortcode:full-url

	// Send back redirect response

}