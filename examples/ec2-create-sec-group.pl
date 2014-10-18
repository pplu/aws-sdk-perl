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

my $group_name = 'sdkTestSG';
my $group_id;

my $group = eval { $ec2->DescribeSecurityGroups(GroupNames => [ $group_name ]) };
if (not $@) { 
  $ec2->DeleteSecurityGroup(GroupName => $group_name);
}

$group = $ec2->CreateSecurityGroup(
  Description => 'A-test-SecurityGroup-for-the-Perl-SDK',
  GroupName => $group_name
);
$group_id = $group->GroupId;

$result = $ec2->AuthorizeSecurityGroupIngress(
  GroupId => $group_id,
  IpProtocol => 'tcp',
  ToPort => 80,
  FromPort => 80,
  CidrIp => '0.0.0.0/0'
);

$result = $ec2->AuthorizeSecurityGroupIngress(
  GroupId => $group_id,
  IpPermissions => [ {
      IpProtocol => 'tcp',
      ToPort => 8080,
      FromPort => 8080,
      IpRanges => [ { CidrIp => '0.0.0.0/0' } ],
    }, {
      IpProtocol => 'tcp',
      ToPort => 443,
      FromPort => 443,
      IpRanges => [ { CidrIp => '0.0.0.0/0' } ],
    }
  ]
);

$group = $ec2->DescribeSecurityGroups(GroupNames => [ $group_name ]);

use Data::Dumper;
print Dumper($group->SecurityGroups->[0]);
