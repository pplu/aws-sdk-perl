#!/usr/bin/env perl

use Test::More;
use Paws;
use strict;
use warnings;
use v5.10;

use Class::Unload;

my $paws = Paws->new;

foreach my $service (sort $paws->available_services){
  Paws->preload_service($service);
  ok(1,"Loaded service $service");
  unload($paws->_class_prefix . $service);
}

sub unload {
  my $class_prefix = shift;
  $class_prefix =~ s/\:\:/\//g;
  foreach my $class (grep { $_ =~ m/^$class_prefix/ } keys %INC) {
    $class =~ s/\//::/g;
    $class =~ s/\.pm$//;
    Class::Unload->unload($class);
  }
}

done_testing;
