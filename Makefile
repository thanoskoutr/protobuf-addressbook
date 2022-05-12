.PHONY: all build clean

all: build

pb/addressbook.pg.go: pb/addressbook.proto
	protoc --go_opt=paths=source_relative --go_out=. pb/addressbook.proto

add_person: cmd/add_person/add_person.go pb/addressbook.pg.go
	go build ./cmd/add_person/add_person.go

list_people: cmd/list_people/list_people.go pb/addressbook.pg.go
	go build ./cmd/list_people/list_people.go

build: add_person list_people

clean:
	rm -f add_person list_people