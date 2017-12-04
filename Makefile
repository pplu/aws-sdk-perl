test:
	carton exec -- prove -v -I lib -I auto-lib t/

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

gen-paws:
	ONLY_PAWS=1 carton exec ./gen_classes.pl

gen-classes:
	mkdir auto-lib/Paws/DeleteMe
	rm -r auto-lib/Paws/*
	./gen_classes.pl

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/10_responses/
	rm t/10_responses/cloudfront-*
	rm t/10_responses/*.json
	./bin/xml2yaml.sh

numbers:
	echo "Number of services" ; ls auto-lib/Paws/*.pm | wc -l
	echo "Number of methods" ; grep "sub [A-Z]" auto-lib/Paws/*.pm | wc -l
	echo "Number of IN/OUT objects" ; ls auto-lib/Paws/*/*.pm | wc -l
	echo "Number of attributes" ; grep "has [A-Z]" auto-lib/Paws/*/*.pm  | wc -l
	echo "-----------"
	echo "JSON" ; grep "::JsonCaller" auto-lib/Paws/*.pm | wc -l
	echo "REST-JSON" ; grep "::RestJsonCaller" auto-lib/Paws/*.pm | wc -l
	echo "Query" ; grep "::QueryCaller" auto-lib/Paws/*.pm | wc -l
	echo "REST-XML" ; grep "::RestXML" auto-lib/Paws/*.pm | wc -l
	echo "EC2Caller" ; grep "::EC2Caller" auto-lib/Paws/*.pm | wc -l
