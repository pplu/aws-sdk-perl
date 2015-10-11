#!/usr/bin/env perl

# This example is designed to benchmark immutability vs non-immutability
# via the preload_service facility in Paws.
# Since preload_service loads classes in-mass, it's easy to see the impact
# that immutability has in various use cases
# If you add use cases, please take into account that if you exercise a
# service that has already been tested, you won't be measuring 
# what you expect (since an already-loaded class will already be loaded
# and immutable (or not)).

use v5.10;
use Paws;

use strict;
use warnings;

use lib 't/lib';
use Test::CustomCredentials;
use Benchmark ':hireswallclock';

my $paws = Paws->new(config => { 
  credentials => 'Test::CustomCredentials',
});

my $preload = 1 if ($ARGV[0] eq 'preload');
$preload = 0 if ($ARGV[0] eq 'ad-hoc');
die "Usage $0 preload|ad-hoc" if (not defined $preload);

Paws->preload_service('AutoScaling') if ($preload);

my $num = 1;
while (1) {
  my $p = fork;
  if (not defined $p){
    say "No more forks for you: $!";
    sleep 120;
  } elsif ($p == 0) {
    my $x = $paws->service('AutoScaling');
    while (1) { sleep 60 }
  } else {
    say $num++;
    sleep 1;
  }
}

