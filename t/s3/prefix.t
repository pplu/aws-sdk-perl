#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use English qw(-no-match-vars);
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $bucketname = 'shadowcatjesstest';
my $s3 = Paws->service('S3', region => 'us-west-2');

my %prefix_methods = (
  ListObjectVersions => {
    Bucket => $bucketname,
    Prefix => 'TestPrefix',
   },
  ListObjects => {
    Bucket => $bucketname,
    Prefix => 'TestPrefix',
   },
 );

my %prefix_results = (
  ListObjectVersions => 'https://s3-us-west-2.amazonaws.com/shadowcatjesstest?prefix=TestPrefix',
  ListObjects => 'https://s3-us-west-2.amazonaws.com/shadowcatjesstest?prefix=TestPrefix',
 );

foreach my $method (qw/ListObjectVersions ListObjects/) {
  my $response;
  eval { $response = $s3->$method(%{ $prefix_methods{$method} });
  } or do {
    warn qq[Error creating object: $@];
  };

 TODO: {
    local $TODO = 'Remove after fixing/verifying prefix';
    ## The URI Query params should contain a Prefix param
    is($response->url, $prefix_results{$method}, "S3 $method URI contains Prefix");
  };
}

done_testing;
