#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';
use if (!-e 'META.json'), lib => './auto-lib';

use English qw(-no-match-vars);
use Data::Dumper;
use Carp;
use Test::More;
use Test::XML::Compare;

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
  ChangeResourceRecordSets => '<ChangeResourceRecordSetsRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><ChangeBatch><Changes><Change><Action>CREATE</Action><ResourceRecordSet><Type>A</Type><TTL>200</TTL><ResourceRecords><ResourceRecord><Value>127.0.0.1</Value></ResourceRecord></ResourceRecords><Name>MyResourceSet</Name></ResourceRecordSet></Change></Changes></ChangeBatch></ChangeResourceRecordSetsRequest>',
  ChangeTagsForResource => '<ChangeTagsForResourceRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><AddTags><Tag><Key>Cost Center</Key><Value>80432</Value></Tag></AddTags><RemoveTagKeys><Key>Owner</Key></RemoveTagKeys></ChangeTagsForResourceRequest>',
  CreateHostedZone => '<CreateHostedZoneRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><CallerReference>MyThing</CallerReference><VPC><VPCRegion>us-west-2</VPCRegion><VPCId>Something</VPCId></VPC><Name>MyDNSName</Name></CreateHostedZoneRequest>',
  CreateQueryLoggingConfig => '<CreateQueryLoggingConfigRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><HostedZoneId>myZoneId</HostedZoneId><CloudWatchLogsLogGroupArn>MyCloudWatchLogsLogGroupArn</CloudWatchLogsLogGroupArn></CreateQueryLoggingConfigRequest>',
);

foreach my $method (qw/ChangeResourceRecordSets ChangeTagsForResource CreateHostedZone CreateQueryLoggingConfig/) {
  my $request;
  eval {
    $request = $route53->$method( %{ $xml_methods{$method}} );
  } or do {
    warn qq[Error calling method: $@];
  };

  if ($request) {
    is_xml_same($request->content, $xml_results{$method}, "$method XML is ok");
  } else {
    fail("Request for $method is undefined.")
  }
}
done_testing;
