#!/usr/bin/env perl

use strict;
use warnings;

use lib 'auto-lib', 'lib', 'examples/lib';

use Paws;
use Data::Dumper;
use Data::Printer;

use Future;
use Future::Utils;

my $aws = Paws->new(
  config => Paws::SDK::Config->new(caller => 'Paws::Net::MojoAsyncCaller')
);

my $regions = { 
  map { ($_ => { client => $aws->service('CloudTrail', region => $_) }) } (
          "us-east-1", "ap-northeast-1", "sa-east-1",
          "ap-southeast-1", "ap-southeast-2", "us-west-2",
          "us-west-1", "eu-west-1", "eu-central-1",
        )
};

my @ops;
foreach my $region (keys %$regions) {
  push @ops, $regions->{ $region }->{ client }->DescribeTrails->then(sub {
    my $res = shift;
    if (scalar(@{ $res->trailList }) == 1) {
      $regions->{ $region }->{ active } = 1;
      $regions->{ $region }->{ global } = $res->trailList->[0]->IncludeGlobalServiceEvents;
      $regions->{ $region }->{ name   } = $res->trailList->[0]->Name;

      return $regions->{ $region }->{ client }->GetTrailStatus(Name => $res->trailList->[0]->Name)->then(sub {
        my $res = shift;
        $regions->{ $region }->{ logging } = $res->IsLogging;
        return Future->done;
      });
    } else {
      $regions->{ $region }->{ active } = 0;
      return Future->done;
    }
  });
};

Future->needs_all(@ops)->get;

p $regions;
