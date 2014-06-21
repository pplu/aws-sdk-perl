#!/usr/bin/env perl

use strict;
use warnings;

my $temp = <<EOF;
{
   "Parameters" : {},
   "AWSTemplateFormatVersion" : "2010-09-09",
   "Description": "XX",
   "Resources" : {
      "HostKeys" : {
         "Type" : "AWS::IAM::AccessKey",
         "Properties" : {
            "UserName" : {
               "Ref" : "CfnUser"
            }
         }
      },
      "CfnUser" : {
         "Type" : "AWS::IAM::User",
         "Properties" : {
            "Policies" : [
               {
                  "PolicyDocument" : {
                     "Statement" : [
                        {
                           "Effect" : "Allow",
                           "Resource" : "*",
                           "Action" : "cloudformation:DescribeStackResource"
                        }
                     ]
                  },
                  "PolicyName" : "GetCloudFormationStackMetadata"
               },
               {
                  "PolicyDocument" : {
                     "Statement" : [
                        {
                           "Effect" : "Allow",
                           "Resource" : "*",
                           "Action" : "s3:GetObject"
                        }
                     ]
                  },
                  "PolicyName" : "GetAnyS3Objects"
               }
            ],
            "Path" : "/"
         }
      }
   }
}
EOF

use lib 'auto-lib', 'lib';
use Data::Dumper;
use Data::Printer;

use Aws;

my $cf = Aws->service('CloudFormation')->new(
  region => 'eu-west-1',
);

my $name = 'Test';

my $result;
$result = $cf->CreateStack(
  StackName => $name, 
  Capabilities => [ 'CAPABILITY_IAM' ], 
  TimeoutInMinutes => 40, 
  TemplateBody => $temp
);

$result = WaitForStack($cf, $name);
p $result;

$result = $cf->ListStacks;
p $result;

sleep 5;

$result = $cf->DeleteStack(StackName => $name);

p $result;

sub WaitForStack {
  my ($self, $stackname) = @_;

  my $result = $cf->DescribeStacks(StackName => $stackname);
  while ($result->Stacks->[0]->StackStatus =~ m/IN_PROGRESS$/){
    $result = $cf->DescribeStacks(StackName => $stackname);
    sleep 5;
  }
  return $result->Stacks->[0];
}
