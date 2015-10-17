#!/usr/bin/env perl

use Test::More;
use Paws;
use strict;
use warnings;
use v5.10;

use Memory::Usage;
my $mu = Memory::Usage->new();
 
$mu->record('starting work'); 

foreach my $service (sort Paws->available_services){
  Paws->preload_service($service);
  ok(1,"Loaded service $service");
}

$mu->record('after loading all classes');
 
# Spit out a report
diag($mu->dump());

done_testing;
