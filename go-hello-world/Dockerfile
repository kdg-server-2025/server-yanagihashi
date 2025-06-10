# --- Build Stage ---
FROM golang:1.20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy source code
COPY main.go .

# Initialize Go modules (optional if you're using external modules)
RUN go mod init hello-world

# Build the binary
RUN go build -o hello-world .

# --- Final Stage ---
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy binary from build stage
COPY --from=builder /app/hello-world .

# Command to run
CMD ["./hello-world"]
