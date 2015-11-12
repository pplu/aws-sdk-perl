#!/usr/bin/env perl

# This example is designed to benchmark the preloading facility in Paws.
# It does so by forking continuously until the machine starts erroring
# out (no more memory for new processes). When preloaded, you get more
# forks that when not preloaded, thus demostrating that preloading the 
# classes before forking favours the creation of more processes

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

