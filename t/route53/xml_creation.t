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
  ChangeResourceRecordSets => '<?xml version="1.0" encoding="UTF-8"?><ChangeResourceRecordSetsRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><ChangeBatch><Changes><Change><Action>CREATE</Action><ResourceRecordSet><Type>A</Type><TTL>200</TTL><ResourceRecord><Value>127.0.0.1</Value></ResourceRecord><Name>MyResourceSet</Name></ResourceRecordSet></Change></Changes></ChangeBatch></ChangeResourceRecordSetsRequest>',
  CreateHostedZone => '<?xml version="1.0" encoding="UTF-8"?><CreateHostedZoneRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><CallerReference>MyThing</CallerReference><Name>MyDNSName</Name><VPC><VPCId>Something</VPCId><VPCRegion>us-west-2</VPCRegion></VPC></CreateHostedZoneRequest>',
  CreateQueryLoggingConfig => '<?xml version="1.0" encoding="UTF-8"?><CreateQueryLoggingConfigRequest xmlns="https://route53.amazonaws.com/doc/2013-04-01/"><CloudWatchLogsLogGroupArn>MyCloudWatchLogsLogGroupArn</CloudWatchLogsLogGroupArn><HostedZoneId>myZoneId</HostedZoneId></CreateQueryLoggingConfigRequest>',
 );

foreach my $method (qw/ChangeResourceRecordSets CreateHostedZone CreateQueryLoggingConfig/) {
  my $request;
  eval {
    $request = $route53->$method( %{ $xml_methods{$method}} );
  } or do {
    warn qq[Error calling method: $@];
  };

 TODO: {
    local $TODO = 'Remove when the XML creation has been fixed';
    is($request->content, $xml_results{$method}, "$method XML is ok");
  };
}
done_testing;

