
pull-other-sdks:
	git submodule init
	git submodule update

gen-classes:
	rm -r auto-lib/Paws/*
	./gen_classes.pl

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/10_responses/
	rm t/10_responses/cloudfront-* t/10_responses/s3-*
	rm t/10_responses/*.json
