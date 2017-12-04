#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use Paws::JsonParamsService;
use TestGivenResponse;
use Data::Dumper;

my $aws = Paws->new(config => {
  credentials => 'Test::CustomCredentials',
  caller => 'TestGivenResponse',
  region => 'fake_region',
});

{
  my $s = $aws->service('JsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(
        response => q'{"__type":"UnrecognizedClientException","message":"The specified credentials are invalid"}',
      );
    },
    "Paws::Exception",
  );
}

{
  my $s = $aws->service('QueryParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'
<ErrorResponse xmlns="https://iam.amazonaws.com/doc/2010-05-08/">
  <Error>
    <Type>Sender</Type>
    <Code>UnspecifiedError</Code>
    <Message>An error has ocurred</Message>
  </Error>
  <RequestId>11ac105f-a378-11e5-9edb-976c4a6249c9</RequestId>
</ErrorResponse>',
      ) 
    },
    "Paws::Exception",
  );
}

{
  my $s = $aws->service('RestJsonParamsService');

  throws_ok(
    sub { 
      $s->Method3(
        response => q'{"__type":"UnrecognizedClientException","message":"The specified credentials are invalid"}', 
      ) 
    },
    "Paws::Exception",
  );
}

{
  my $s = $aws->service('RestXmlParamsService');

  throws_ok(
    sub { 
      $s->Method3(response => q'
<ErrorResponse xmlns="https://iam.amazonaws.com/doc/2010-05-08/">
  <Error>
    <Type>Sender</Type>
    <Code>UnspecifiedError</Code>
    <Message>An error has ocurred</Message>
  </Error>
  <RequestId>11ac105f-a378-11e5-9edb-976c4a6249c9</RequestId>
</ErrorResponse>',
      ) 
    },
    "Paws::Exception",
  );
}

done_testing;
