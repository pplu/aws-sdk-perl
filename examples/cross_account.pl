#!/usr/bin/perl

use Paws;
use Paws::Credential::AssumeRole;

my $ec2 = Paws->service('EC2',
  region => 'eu-west-1', 
  credentials => Paws::Credential::AssumeRole->new(
    RoleArn => 'arn:aws:iam::123456789012:role/AdminRole',
    RoleSessionName => 'CrossAccountTest',
    ExternalId => 'MyExternalId',
  )
);

my $result = $ec2->DescribeSecurityGroups;

use Data::Dumper;
print Dumper($result);
