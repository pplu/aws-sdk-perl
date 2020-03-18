#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';
use if (!-e 'META.json'), lib => './auto-lib';

use English qw(-no-match-vars);
use Data::Dumper;
use Carp;
use Test::More;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $route53 = Paws->service('Route53', region => 'us-west-2');

my %xml_methods = (
  ChangeResourceRecordSets => {
    HostedZoneId => 'SomeId',
    ChangeBatch => {
      Changes => [
        {
          Action => 'CREATE',
          ResourceRecordSet => {
            Name => 'MyResourceSet',
            Type => 'A',
            TTL => 200,
            ResourceRecords => [
              {
                Value => '127.0.0.1',
               },
             ],
           },
         }
       ],
    }
   },
  ChangeTagsForResource => {
     ResourceId   => 'SomeId',
     ResourceType => 'hostedzone',
     AddTags => [
       {
         Key   => 'Cost Center',
         Value => '80432',
       }
     ],
     RemoveTagKeys => ['Owner'],
   },
  CreateHostedZone => {
    CallerReference => 'MyThing',
    Name => 'MyDNSName',
    VPC => {
      VPCId => 'Something',
      VPCRegion => 'us-west-2',
     },
  },
  CreateQueryLoggingConfig => {
    CloudWatchLogsLogGroupArn => 'MyCloudWatchLogsLogGroupArn',
    HostedZoneId => 'myZoneId',
   },
 );

my %xml_results = (
  ChangeResourceRecordSets => '<ChangeResourceRecordSetsRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><ChangeBatch><Changes><Change><Action>CREATE</Action><ResourceRecordSet><Name>MyResourceSet</Name><ResourceRecords><ResourceRecord><Value>127.0.0.1</Value></ResourceRecord></ResourceRecords><TTL>200</TTL><Type>A</Type></ResourceRecordSet></Change></Changes></ChangeBatch></ChangeResourceRecordSetsRequest>',
  ChangeTagsForResource => '<ChangeTagsForResourceRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><AddTags><Tag><Key>Cost Center</Key><Value>80432</Value></Tag></AddTags><RemoveTagKeys><Key>Owner</Key></RemoveTagKeys></ChangeTagsForResourceRequest>',
 CreateHostedZone => '<CreateHostedZoneRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><CallerReference>MyThing</CallerReference><Name>MyDNSName</Name><VPC><VPCId>Something</VPCId><VPCRegion>us-west-2</VPCRegion></VPC></CreateHostedZoneRequest>',
 CreateQueryLoggingConfig => '<CreateQueryLoggingConfigRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><CloudWatchLogsLogGroupArn>MyCloudWatchLogsLogGroupArn</CloudWatchLogsLogGroupArn><HostedZoneId>myZoneId</HostedZoneId></CreateQueryLoggingConfigRequest>',
);

foreach my $method (qw/ChangeResourceRecordSets ChangeTagsForResource CreateHostedZone CreateQueryLoggingConfig/) {
  my $request = $route53->$method( %{ $xml_methods{$method}} );

  cmp_ok($request->content, 'eq', $xml_results{$method}, "$method XML content is generated as expected");
}
done_testing;
