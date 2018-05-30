

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Test::CustomCredentials;

my $paws = Paws->new(config => { caller => 'Test05Caller', credentials => 'Test::CustomCredentials' } );

# test with which service name we sign
my $services = {
  LexRuntime => { 'us-east-1' => 'lex', },
  Pinpoint => { 'us-east-1' => 'mobiletargeting' },
  IoT => { 'us-east-1' => 'execute-api' },
  EC2 => { 'us-east-1' => 'ec2' },
  DynamoDB => { 'eu-west-1' => 'dynamodb' },
  AppStream => { 'us-east-1' => 'appstream' },
  Pricing => { 'us-east-1' => 'pricing' },
};

foreach my $service (keys %$services) {
  foreach my $region (keys %{ $services->{ $service } }) {
    my $svc = $paws->service($service, region => $region);

    cmp_ok(
      $svc->signing_name,
      'eq',
      $services->{ $service }->{ $region },
      "Will sign $service with $services->{ $service }->{ $region }"
    );
  }
}

done_testing;
