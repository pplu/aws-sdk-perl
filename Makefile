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
	perl -I builder-lib builder-bin/generate-paws-classes --withpaws --dir botocore/botocore/data

copy-tests:
	cp botocore/tests/unit/response_parsing/xml/responses/* t/10_responses/
	rm t/10_responses/cloudfront-* t/10_responses/s3-*
	rm t/10_responses/*.json

dzil-builder:
	cpanm -n -l dzil-local Dist::Zilla
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil authordeps --missing | cpanm -n -l dzil-local/

dist-builder: dzil-builder
	cp cpanfile-ext-builder cpanfile
	cp dist.ini-ext-builder dist.ini
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil build

dist-paws: dzil-builder
	cp cpanfile-paws cpanfile
	cp dist.ini-paws dist.ini
	PATH=$(PATH):dzil-local/bin PERL5LIB=dzil-local/lib/perl5 dzil build
