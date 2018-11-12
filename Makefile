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
	cd botocore && \
	  git checkout develop
	cd botocore && \
	  if [ -z "`git remote -v | grep ^boto`" ]; then git remote add boto https://github.com/boto/botocore.git; fi

pull-boto-develop:
	cd botocore && git pull boto develop

gen-paws:
	carton exec ./builder-bin/gen_classes.pl --paws_pm

gen-classes:
	mkdir -p auto-lib/Paws/DeleteMe
	rm -r auto-lib/Paws/*
	carton exec ./builder-bin/gen_classes.pl --paws_pm --classes

docu-links:
	carton exec ./builder-bin/gen_classes.pl --docu_links

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
