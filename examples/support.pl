#!/usr/bin/env perl

use Paws;
use Data::Printer;

my $support = Paws->service('Support')->new(
  region => 'us-east-1'
);

my $list = $support->DescribeCases;

p $list;
