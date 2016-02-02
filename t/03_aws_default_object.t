#!/usr/bin/env perl

use lib 't/lib';

package A::NEW::CALLER_2;
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { 'CALLER2' }
  sub caller_to_response {} 

package A::NEW::CALLER_3;
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { 'CALLER3' }
  sub caller_to_response {} 

package main;

use strict;
use warnings;

use Paws;
use Test::More;

Paws->default_config->credentials('Test::CustomCredentials');

# Get an Paws object, with defaults and then a service
my $aws = Paws->new;
ok($aws->config->caller->isa('Paws::Net::Caller'), 'Got default caller');
my $svc = $aws->service('SQS');
ok($svc->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

use Test::CustomCredentials;
Paws->default_config(Paws::SDK::Config->new(caller => 'A::NEW::CALLER_2', credentials => Test::CustomCredentials->new ));

my $svc2 = Paws->service('SQS', region => 'eu-west-1', credentials => 'Test::CustomCredentials' );
ok($svc2->caller->isa('A::NEW::CALLER_2'), 'Correct default caller class');

my $svc3 = $aws->service('SQS', region => 'eu-west-1', credentials => 'Test::CustomCredentials' );
ok($svc3->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

my $svc4 = $aws->service('IAM', credentials => 'Test::CustomCredentials');
ok($svc4->caller->isa('Paws::Net::Caller'), 'Correct default caller class');

my $svc5 = Paws->service('IAM', region => 'eu-west-1', credentials => 'Test::CustomCredentials' );
ok($svc5->caller->isa('A::NEW::CALLER_2'), 'Correct default caller class');

Paws->default_config->caller('A::NEW::CALLER_3');
my $svc6 = Paws->service('SQS', region => 'eu-west-1', credentials => 'Test::CustomCredentials' );
ok($svc6->caller->isa('A::NEW::CALLER_3'), 'Correct default caller class');

my $paws2 = Paws->new;
$paws2->service('SQS', region => 'eu-west-1');
ok($svc6->caller->isa('A::NEW::CALLER_3'), 'Correct default caller class');

done_testing;
