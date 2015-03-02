#!/usr/bin/env perl

package A::NEW::CALLER_2 {
  use Moose::Role;
};

package A::NEW::CALLER_3 {
  use Moose::Role;
};


use strict;
use warnings;

use Paws;
use Test::More;


# Get an Paws object, with defaults and then a service
my $aws = Paws->new;
cmp_ok($aws->config->caller, 'eq', 'Paws::Net::Caller', 'Got default caller');
my $svc = $aws->service('SQS', region => 'eu-west-1' );
ok($svc->does('Paws::Net::Caller'), 'Correct default caller class');

Paws->default_config(Paws::SDK::Config->new(caller => 'A::NEW::CALLER_2'));

my $svc2 = Paws->service('SQS', region => 'eu-west-1' );
ok($svc2->does('A::NEW::CALLER_2'), 'Correct default caller class');

my $svc3 = $aws->service('SQS', region => 'eu-west-1' );
ok($svc3->does('Paws::Net::Caller'), 'Correct default caller class');

my $svc4 = $aws->service('IAM');
ok($svc4->does('Paws::Net::Caller'), 'Correct default caller class');

my $svc5 = Paws->service('IAM', region => 'eu-west-1' );
ok($svc5->does('A::NEW::CALLER_2'), 'Correct default caller class');

done_testing;
