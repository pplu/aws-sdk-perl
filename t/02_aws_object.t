#!/usr/bin/env perl

package A::NEW::CALLER {
  use Moose::Role;
};
package A::NEW::CALLER2 {
  use Moose::Role;
};


use strict;
use warnings;

use Aws;
use Test::More;

{
  # Get an Aws object, with defaults and then a service
  my $aws = Aws->new;
  cmp_ok($aws->config->caller, 'eq', 'Net::AWS::Caller', 'Got default caller');
  my $svc = $aws->service('SQS')->new( region => 'eu-west-1', version => 1 );
  ok($svc->does('Net::AWS::Caller'), 'Correct default caller class');
}

{
  # Personalize Aws object, then get a service
  my $aws = Aws->new(config => AWS::SDK::Config->new(caller => 'A::NEW::CALLER'));
  cmp_ok($aws->config->caller, 'eq', 'A::NEW::CALLER', 'Got new caller');
  my $svc = $aws->service('SQS')->new( region => 'eu-west-1', version => 1 );
  ok($svc->does('A::NEW::CALLER'), 'Correct custom caller class');
  
  my $svc2 = $aws->service('SQS')->new( region => 'eu-west-1', version => 1 );

  cmp_ok($svc->meta->name, 'eq', $svc2->meta->name, 'Got the same class calling service twice');

  my $aws2 = Aws->new(config => AWS::SDK::Config->new(caller => 'A::NEW::CALLER2'));
  my $svc3 = $aws2->service('SQS')->new( region => 'eu-west-1', version => 1 );

  ok($svc3->does('A::NEW::CALLER2'), 'Correct custom caller class');

  cmp_ok($svc2->meta->name, 'ne', $svc3->meta->name, 'Got different classes calling on different Aws instances');
}

{
  # Get a service through the Aws class
  my $svc = Aws->service('SQS')->new( region => 'eu-west-1', version => 1 );
  ok($svc->does('Net::AWS::Caller'), 'Correct default caller class');
}

done_testing;
