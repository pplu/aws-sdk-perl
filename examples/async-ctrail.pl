#!/usr/bin/env perl

use strict;
use warnings;
use v5.10;

use lib 'auto-lib', 'lib';

use Paws;
use Data::Dumper;
use Data::Printer;

use Future;
use Future::Utils;

my $aws = Paws->new(
  config => { caller => 'Paws::Net::MojoAsyncCaller' }
);

my $regions = {};

my @ops;
foreach my $region (
          "us-east-1", "ap-northeast-1", "sa-east-1",
          "ap-southeast-1", "ap-southeast-2", "us-west-2",
          "us-west-1", "eu-west-1", "eu-central-1", "eu-west-2",
          ) {
  push @ops, $aws->service('CloudTrail', region => $region)->DescribeTrails->then(sub {
    my $res = shift;
    print "Got response from DescribeTrails\n";
    if (scalar(@{ $res->TrailList }) == 1) {
      $regions->{ $region }->{ active } = 1;
      $regions->{ $region }->{ global } = $res->TrailList->[0]->IncludeGlobalServiceEvents;
      $regions->{ $region }->{ name   } = $res->TrailList->[0]->Name;

      return $aws->service('CloudTrail', region => $region)->GetTrailStatus(
        Name => $res->TrailList->[0]->Name
      )->then(sub {
        my $res = shift;
        print "Got response from GetTrailStatus\n";
        $regions->{ $region }->{ logging } = $res->IsLogging;
        Future->done;
      })->else(sub {
        Future->fail("Failed (2) getting info for region $region");
      });
    } else {
      $regions->{ $region }->{ active } = 0;
      Future->done;
    }
  })->else(sub {
    Future->fail("Failed (1) getting info for region $region");
  });
};

my $f = Future->needs_all(@ops);

$f->on_ready( sub {
  my $f = shift;
  my $res = $f->get;
  print scalar(localtime) . '-' . Dumper($res);
  Mojo::IOLoop->stop;
  return Future->done;
})->on_fail( sub {
  say "Something failed!";
  return Future->done;
});

Mojo::IOLoop->start;
#$f->get;

print Dumper($f);
print "FAILED!!!" if ($f->is_failed);


p $regions;
