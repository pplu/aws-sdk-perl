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

my %uri_methods = (
  ChangeTagsForResource => {
      ResourceId   => 'SomeId',
      ResourceType => 'hostedzone',
      AddTags => [
        {
          Key   => 'SomeTag',
          Value => '100',
        }
      ],
      RemoveTagKeys => ['SomeOtherTag', 'TestTag'],
    },
  # Does not use locationName override for URI location with HostedZoneId
  CreateQueryLoggingConfig => {
    CloudWatchLogsLogGroupArn => 'arn:aws:logs:us-west-2:111111111111:log-group:/aws/route53/example.com',
    HostedZoneId              => 'SomeId',
  },
  # Does use locationName override for URI location with HostedZoneId
  ListResourceRecordSets => {
    HostedZoneId          => 'SomeId',
    MaxItems              => '1',
   },
   # Uses a given ResourceID for Hostedzone
   ListTagsForResource => {
     ResourceId   => 'SomeId',
     ResourceType => 'hostedzone',
   },
 );

my %uri_expected = (
  ChangeTagsForResource => '/2013-04-01/tags/hostedzone/SomeId',
  ListTagsForResource => '/2013-04-01/tags/hostedzone/SomeId',
  CreateQueryLoggingConfig => '/2013-04-01/queryloggingconfig',
  ListResourceRecordSets => '/2013-04-01/hostedzone/SomeId/rrset?maxitems=1',
);

foreach my $method (qw/ChangeTagsForResource CreateQueryLoggingConfig ListResourceRecordSets ListTagsForResource/) {
  my $request;
  eval {
    $request = $route53->$method( %{ $uri_methods{$method}} );
  } or do {
    warn qq[Error calling method: $@];
  };

  TODO: {
    local $TODO = 'Remove when the XML creation has been fixed';
    # check the uri matches using the examples given in the AWS API docs for the method
    if ($request) {
      is($request->uri, $uri_expected{$method}, "Route53 $method uri matches expected behaviour.");
    } else {
      fail("Request for $method is undefined.")
    }
  };
}
done_testing;
