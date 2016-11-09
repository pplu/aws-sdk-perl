#!/usr/bin/env perl

use v5.10;
use Paws;

my $bucket = $ARGV[0] or die "Usage $0 bucket\n";

my $s3 = Paws->service('S3', region => 'eu-west-1');

my $res = $s3->ListAllObjects(
  Bucket => $bucket
);

foreach my $object (@{ $res->Contents }) {
  say $object->Key;
}

