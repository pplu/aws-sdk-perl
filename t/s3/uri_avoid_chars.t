#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Data::Printer;
use Data::Dumper;
use Carp;
use Test::More;
use Test::Exception;
use URI::Escape;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'shadowcatjesstest';
my $s3 = Paws->service('S3', region => 'us-west-2');

my @to_encode = ('\\',
                 '{',
                 '^',
                 '}',
                 '`',
                 ']',
                 '>',
                 '[',
                 '<',
                 '#',
                 '%',
                 q{'},
                 q{"},
                 '~',
                 '|',
                 (map { chr($_) } (128..255)),
    );

foreach my $char (@to_encode) {
  my $response;
  dies_ok { $response = $s3->PutObject(
    "Key"    => "test$char",
    "Bucket" => $bucketname,
    "Body"   => 'Blub',
      );
  };

}

done_testing;
