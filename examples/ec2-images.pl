#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use Aws;

my $result;

my $ec2 = Aws->service('EC2')->new(
  region => 'eu-west-1',
);

#$result = $ec2->DescribeImages(Owners => [ 'self' ]);
$result = $ec2->DescribeImages(Owners => [ 'amazon' ]);
p $_ for (@{ $result->Images });

exit 1;


