
pull-other-sdks:
	git submodule init
	git submodule update

gen-classes:
	./gen_classes.pl

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/10_responses/
