
pull-other-sdks:
	git submodule init
	git submodule update

gen-classes:
	find botocore/botocore/data/aws/ -type f -name "*.json" -exec ./gen_classes.pl {} \;

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/xml/responses/
