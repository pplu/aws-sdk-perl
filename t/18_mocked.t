#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Test::Exception;
use Paws;
use Paws::Net::FileMockCaller;
use Paws::API::ServiceToClass;

my $paws = Paws->new(config => {
  credentials => 'Test::CustomCredentials'
});

my $dir = 't/18_mocked';
opendir(my $dh, $dir);
my @files = @ARGV;
if (not @files) {
  @files = map { "$dir/$_" } grep { $_ =~ m/\.response$/ } sort readdir($dh);
} else {
  @files = grep { $_ =~ m/\.response$/ } @files;
}

foreach my $file (@files) {
  my $caller = Paws::Net::FileMockCaller->new(
    file => $file
  );
  my $service_code = $caller->service;
  my $service_name = Paws::API::ServiceToClass::service_to_class($service_code);

  my $method_call   = $caller->method;
  my $method_params = $caller->params;

  my $svc = $paws->service($service_name, region => 'dummy', caller => $caller);

  my $ret;
  lives_ok(sub {
    $ret = $svc->$method_call(%$method_params);
  }, "Called $method_call on $service_name with params from $file");
}

done_testing;
