#!/usr/bin/env perl

use Paws;
use Test::More;
use Test::Exception;


use Paws::Credential::STS;

my $creds = Paws::Credential::STS->new(
  Name => 'MyName',
  DurationSeconds => 900,
  Policy => '{"Version":"2012-10-17","Statement":[{"Effect": "Allow","Action":["ec2:DescribeInstances","iam:ListUsers","sqs:ListQueues"],"Resource":"*"}]}'
);

my $ec2 = Paws->service('EC2', credentials => $creds, region => 'eu-west-1');

lives_ok { $ec2->DescribeInstances }      'DescribeInstances works';
dies_ok  { $ec2->DescribeSecurityGroups } 'DescribeSecurityGroups fails';


my $iam = Paws->service('IAM', credentials => $creds);

dies_ok  { $iam->ListUsers }  'ListUsers fails because temp creds cant call STS, even if creds permit';
dies_ok  { $iam->ListGroups } 'ListGroups fails because temp creds cant call STS';

my $sqs = Paws->service('SQS', credentials => $creds, region => 'eu-west-1');

lives_ok { $sqs->ListQueues } 'ListQueues works';
dies_ok  { $sqs->CreateQueue(QueueName => 'test_queue_name') } 'CreateQueue dies';

done_testing;
