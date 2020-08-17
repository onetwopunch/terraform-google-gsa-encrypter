CFN := cfn/encrypter
fmt:
	pushd $(CFN) && go fmt && popd

run: fmt
	pushd $(CFN)/cmd && go run main.go && popd

.PHONY: fmt run