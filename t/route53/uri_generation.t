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
  ListResourceRecordSets => {
    HostedZoneId          => 'SomeId',
    MaxItems              => '1',
   },
 );

my %uri_expected = (
  ListResourceRecordSets => '/2013-04-01/hostedzone/SomeId/rrset?maxitems=1',
 );

foreach my $method (qw/ListResourceRecordSets/) {
  my $request;
  eval {
    $request = $route53->$method( %{ $uri_methods{$method}} );
  } or do {
    warn qq[Error calling method: $@];
  };

# The uri should work without locationName and use Id
 is($request->uri, $uri_expected{$method}, "Route53 $method uri matches expected behaviour.");
}
done_testing;
