#!/usr/bin/env perl

package A::NEW::CALLER_2 {
  use Moose::Role;
};

package A::NEW::CALLER_3 {
  use Moose::Role;
};


use strict;
use warnings;

use Aws;
use Test::More;


# Get an Aws object, with defaults and then a service
my $aws = Aws->new;
cmp_ok($aws->config->caller, 'eq', 'Net::AWS::Caller', 'Got default caller');
my $svc = $aws->service('SQS')->new( region => 'eu-west-1' );
ok($svc->does('Net::AWS::Caller'), 'Correct default caller class');

Aws->default_config(AWS::SDK::Config->new(caller => 'A::NEW::CALLER_2'));

my $svc2 = Aws->service('SQS')->new( region => 'eu-west-1' );
ok($svc2->does('A::NEW::CALLER_2'), 'Correct default caller class');

my $svc3 = $aws->service('SQS')->new( region => 'eu-west-1' );
ok($svc3->does('Net::AWS::Caller'), 'Correct default caller class');

my $svc4 = $aws->service('IAM')->new( region => 'eu-west-1' );
ok($svc4->does('Net::AWS::Caller'), 'Correct default caller class');

my $svc5 = Aws->service('IAM')->new( region => 'eu-west-1' );
ok($svc5->does('A::NEW::CALLER_2'), 'Correct default caller class');

done_testing;
