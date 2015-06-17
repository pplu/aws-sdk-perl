#!/usr/bin/env perl

package A::NEW::CALLER {
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { return 'CALLER1' }
};
package A::NEW::CALLER2 {
  use Moose;
  with 'Paws::Net::CallerRole';
  sub do_call { return 'CALLER2' }
};


use strict;
use warnings;

use Paws;
use Test::More;

{
  # Get an Paws object, with defaults and then a service
  my $aws = Paws->new;
  ok($aws->config->caller->isa('Paws::Net::Caller'), 'Got default caller');
  my $svc = $aws->service('SQS', region => 'eu-west-1', version => 1 );
  ok($svc->caller->isa('Paws::Net::Caller'), 'Correct default caller class');
}

{
  # Personalize Paws object, then get a service
  my $aws = Paws->new(config => { caller => 'A::NEW::CALLER' });
  ok($aws->config->caller->isa('A::NEW::CALLER'), 'Got new caller');
  my $svc = $aws->service('SQS', region => 'eu-west-1', version => 1 );
  ok($svc->caller->isa('A::NEW::CALLER'), 'Correct custom caller class');
  
  my $svc2 = $aws->service('SQS', region => 'eu-west-1', version => 1 );

  cmp_ok($svc->meta->name, 'eq', $svc2->meta->name, 'Got the same class calling service twice');

  my $aws2 = Paws->new(config => { caller => 'A::NEW::CALLER2' });
  my $svc3 = $aws2->service('SQS', region => 'eu-west-1', version => 1 );

  ok($svc3->caller->isa('A::NEW::CALLER2'), 'Correct custom caller class');

  cmp_ok($svc2->caller->meta->name, 'ne', $svc3->caller->meta->name, 'Got different classes calling on different Paws instances');
}

{
  # Get a service through the Paws class
  my $svc = Paws->service('SQS', region => 'eu-west-1', version => 1 );
  ok($svc->caller->isa('Paws::Net::Caller'), 'Correct default caller class');
}

done_testing;
