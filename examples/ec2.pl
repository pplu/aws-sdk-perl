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

$result = $ec2->DescribeAddresses->Addresses;
p $result;

#$result = $ec2->DescribeInstances;
#p $result;

$result = $ec2->DescribeAvailabilityZones;
p $result;

$result = $ec2->DescribeRegions;
p $result;

#$result = $ec2->DescribeSnapshots;
#p $result;
#p $_ for @{ $result->Snapshots };

$result = $ec2->DescribeImages(Owners => [ 'self' ]);
p $result;
