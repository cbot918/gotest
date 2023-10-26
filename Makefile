.PHONY: doc

# test
v:
	go test -v
bench:
	go test -bench=.

# doc
doc:
	godoc -http=:6060

