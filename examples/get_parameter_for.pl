#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use Paws;

my $result;

my $ssm = Paws->service('SSM',
  region => 'eu-west-1',
);

$result = $ssm->GetParameters(
  Names => [ '/prod/DBHOST', '/prod/DBPASS' ],
  WithDecryption => 1,
);

p $result;

foreach my $p (@{ $result->Parameters }) {
  p $p;
} 
