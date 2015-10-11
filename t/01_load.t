#!/usr/bin/env perl

use Test::More;
use Paws;
use strict;
use warnings;
use v5.10;

foreach my $service (sort Paws->available_services){
  Paws->preload_service($service);
  ok(1,"Loaded service $service");
}

done_testing;
