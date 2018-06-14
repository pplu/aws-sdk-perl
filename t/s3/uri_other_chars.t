#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Data::Printer;
use Data::Dumper;
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use Paws::Net::MockCaller;

my $paws = Paws->new(config => {
  caller => Paws::Net::MockCaller->new(
    mock_dir => 't/s3/uri_other_chars',
    mock_mode => 'REPLAY',
#    mock_mode => 'RECORD',
  ),
#  credentials => 'Test::CustomCredentials'
});

my $bucketname = 'shadowcatjesstest';
my $s3 = $paws->service('S3', region => 'us-west-2');

my @to_encode = ("\0243", # GBP currency sign
                 "\0251", # copyright symbol
    );

foreach my $char (@to_encode) {
  my $response;
  eval { $response = $s3->PutObject(
    "Key"    => "test$char",
    "Bucket" => $bucketname,
    "Body"   => 'Blub',
      );
  } or do {
    warn qq[Error creating object: $@];
  };

## The URI should contain a once-encoded character:
  is($s3->caller->actual_request->url, 'https://s3-us-west-2.amazonaws.com/test-uri-paws/test' . uri_escape($char), "S3 uri encoded correctly");
}

done_testing;
