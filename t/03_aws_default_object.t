#!/usr/bin/env perl

package A::NEW::CALLER_2 {
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { 'CALLER2' }
};

package A::NEW::CALLER_3 {
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { 'CALLER3' }
};


use strict;
use warnings;

use Paws;
use Test::More;


# Get an Paws object, with defaults and then a service
my $aws = Paws->new;
ok($aws->config->caller->isa('Paws::Net::Caller'), 'Got default caller');
my $svc = $aws->service('SQS', region => 'eu-west-1' );
ok($svc->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

Paws->default_config(Paws::SDK::Config->new(caller => 'A::NEW::CALLER_2'));

my $svc2 = Paws->service('SQS', region => 'eu-west-1' );
ok($svc2->caller->isa('A::NEW::CALLER_2'), 'Correct default caller class');

my $svc3 = $aws->service('SQS', region => 'eu-west-1' );
ok($svc3->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

my $svc4 = $aws->service('IAM');
ok($svc4->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

my $svc5 = Paws->service('IAM', region => 'eu-west-1' );
ok($svc5->caller->isa('A::NEW::CALLER_2'), 'Correct default caller class');

done_testing;
