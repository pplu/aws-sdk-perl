test:
	prove -I lib -I auto-lib -I t/lib t/

cover:
	cover -delete
	HARNESS_PERL_SWITCHES=-MDevel::Cover make test
	cover

pull-other-sdks:
	git submodule init
	git submodule update
	cd botocore && git checkout develop
	cd botocore && git remote add boto https://github.com/boto/botocore.git

pull-boto-develop:
	cd botocore && git pull boto develop

gen-classes:
	rm -r auto-lib/Paws/*
	./gen_classes.pl

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/10_responses/
	rm t/10_responses/cloudfront-* t/10_responses/s3-*
	rm t/10_responses/*.json
