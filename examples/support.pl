#!/usr/bin/env perl

use Aws;
use Data::Printer;

my $support = Aws->service('Support')->new(
  region => 'us-east-1'
);

my $list = $support->DescribeCases;

p $list;
