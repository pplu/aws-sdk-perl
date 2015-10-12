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

my $immutable = 1 if ($ARGV[0] eq 'imm');
$immutable = 0 if ($ARGV[0] eq 'mut');
die "Usage $0 imm|mut" if (not defined $immutable);
Paws->default_config->immutable($immutable);

{
  my $t = timeit(1, sub {
    Paws->preload_service('EC2', 'RunInstances');
  });

  say('EC2 Runinstances ', (($immutable)?'immutable':'mutable'), ': ', $t->real);
}

{
  my $t = timeit(1, sub {
    Paws->preload_service('AutoScaling');
  });

  say('All AutoScaling ', (($immutable)?'immutable':'mutable'), ': ', $t->real);
}

