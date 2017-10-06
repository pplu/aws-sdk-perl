#!/usr/bin/env perl

use Paws;
use Data::Printer;

# Support always uses the same region
my $support = Paws->service('Support',
  region => 'us-east-1'
);

my $list = $support->DescribeCases;

p $list;
