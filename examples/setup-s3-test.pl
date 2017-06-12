#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

use lib 'auto-lib', 'lib';

use Data::Dumper;
use Data::Printer;
use Carp;

use Paws;

my $service    = 'S3';
my $region     = 'eu-west-1';
my $bucketname = 'paws-test-paginators-2';

my $s3 = Paws->service($service, 
    region => $region,
);

$s3->CreateBucket(
  Bucket => $bucketname,
  CreateBucketConfiguration => {
    LocationConstraint => $region, 
  },
);

foreach my $prefix ('', 'prefix1') {
  foreach my $obj_num (1..100) {
    $s3->PutObject(
      Bucket => $bucketname,
      Key    => ($prefix ? "$prefix/" : '' ) . $obj_num,
      Body   => "content for $prefix/$obj_num",
    );
  }
}


