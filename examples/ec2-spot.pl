#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use Aws::EC2;

my $result;

my $ec2 = Aws::EC2->new(
  region => 'eu-west-1',
);

$result = $ec2->DescribeSpotPriceHistory;
p $result;
p $_ foreach @{ $result->SpotPriceHistory };
