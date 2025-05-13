# Use the official Golang image from the Docker Hub
FROM golang:1.20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go source code into the container
COPY main.go .

# Initialize Go modules
RUN go mod init hello-world

# Build the Go application
RUN go build -o hello-world .

# Run the compiled Go binary
CMD ["./hello-world"]
