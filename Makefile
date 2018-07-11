test:
	carton exec -- prove -v -I lib -I auto-lib t/

pod-test:
	for i in `find auto-lib/Paws/ -name \*.pm`; do podchecker $$i; done;

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
	carton exec ./builder-bin/gen_classes.pl --paws_pm

gen-classes:
	mkdir auto-lib/Paws/DeleteMe
	rm -r auto-lib/Paws/*
	./builder-bin/gen_classes.pl --paws_pm --classes
	# TODO: Migrate to using generate-paws-classes
	# perl -I builder-lib builder-bin/generate-paws-classes --withpaws --dir botocore/botocore/data

docu-links:
	./builder-bin/gen_classes.pl --docu_links

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

run_dynamo_local:
	( mkdir /tmp/dynamodb-local && curl https://s3.eu-central-1.amazonaws.com/dynamodb-local-frankfurt/dynamodb_local_latest.tar.gz | tar xvz --directory /tmp/dynamodb-local ) ; cd /tmp/dynamodb-local; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -sharedDb -inMemory

run_minio_local:
	( mkdir /tmp/minio_data && wget -O /tmp/minio_data/minio https://dl.minio.io/server/minio/release/linux-amd64/minio && chmod +x /tmp/minio_data/minio ) ; /tmp/minio_data/minio server /tmp/minio_data/

dist: dist-builder dist-paws

dist-builder:
	cp cpanfile-ext-builder cpanfile
	cp dist.ini-ext-builder dist.ini
	carton exec dzil build

dist-paws:
	cp cpanfile-paws cpanfile
	cp dist.ini-paws dist.ini
	carton exec dzil build
