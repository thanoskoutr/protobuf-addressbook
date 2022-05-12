# Protocol Buffers Example - Address Book

## About

This is an example project for Protocol Buffers in Go, used by the official tutorial.
The code has been modified to have only the Go implementation, as the general example includes implementation for all supported languages.

It is an address book application, using protocol buffers for the language/platform neutral data representation layer, with 2 command lines programs that:

- `add_person`: Adds a person to an existing or a new address book.
- `list people`: Lists all people in the given address book.

You can see the address book representation in `pb/addressbook.proto`.

## Build Project

To build the project use the `Makefile` that will compile the `.proto` file to a Go source file, and the command line applications:

```bash
make
```

## Usage

To add a person to an existing or a new address book, run with the book name as the 1st argument:

```bash
./add_person book
```

To list all people in the address book, run with the book name as the 1st argument:

```bash
./list_people book
```

## Links

- [Download Protocol Buffers](https://developers.google.com/protocol-buffers/docs/downloads)
- [Protocol Buffer Basics: Go](https://developers.google.com/protocol-buffers/docs/gotutorial)
- [Protocol Buffers Examples Repository](https://github.com/protocolbuffers/protobuf/tree/main/examples)
