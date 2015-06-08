package main

import (
    "encoding/json"
    "fmt"
    "net/http"
    "os"
)

type Message struct {
    Message string `json:"message"`
    From    string `json:"from"`
}

var port = "8000"

func response(rw http.ResponseWriter, request *http.Request) {
    message := Message{Message: "Hello Devcon", From: port}

    rw.Header().Set("Content-Type", "application/json")
    rw.WriteHeader(http.StatusOK)
    if err := json.NewEncoder(rw).Encode(message); err != nil {
        panic(err)
    }
}

func main() {
    env_port := os.Getenv("PORT")
    if env_port != "" {
        port = env_port
    }

    fmt.Println("Listening on port: " + port)

    http.HandleFunc("/", response)
    http.ListenAndServe(":"+port, nil)
}
