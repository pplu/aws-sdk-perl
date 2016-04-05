#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use Paws::API::Retry;
use Paws::Exception;

{
  my $retry = Paws::API::Retry->new(
    type => 'exponential',
    base => 3,
    growth_factor => 2,
    max_tries => 5,
    tries => 0,
    retry_rules => [ sub { shift->code eq 'X' } ],
  );

  $retry->operation_result(Paws::Exception->new(code => 'X', message => 'X', request_id => ''));

  #DDB: [ 0, 0.050, 0.100, 0.200, 0.400, 0.800, 1.600, 3.200, 6.400, 12.800 ]

  $retry->one_more_try;

  {
  my $s = $retry->sleep_time;
  ok($s >= 0 && $s <= 1, "Sleep of 0-1 secs ($s)");
  ok($retry->should_retry, 'This should be retriable');
  }

  $retry->one_more_try;

  {
  my $s = $retry->sleep_time;
  ok($s >= 1 && $s <= 2, "Sleep of 1-2 secs ($s)");
  ok($retry->should_retry, 'This should be retriable');
  }

  $retry->one_more_try;

  {
  my $s = $retry->sleep_time;
  ok($s >= 2 && $s <= 3, "Sleep of 2-3 secs ($s)");
  ok($retry->should_retry, 'This should be retriable');
  }

  $retry->one_more_try;

  {
  my $s = $retry->sleep_time;
  ok($s >= 4 && $s <= 5, "Sleep of 4-5 secs ($s)");
  ok($retry->should_retry, 'This should be retriable');
  }

  $retry->one_more_try;

  {
  my $s = $retry->sleep_time;
  ok($s >= 8 && $s <= 9, "Sleep of 8-9 secs ($s)");
  ok(not($retry->should_retry), 'Last attempt should not be retriable');
  }

}

{
  my $retry = Paws::API::Retry->new(
    type => 'exponential',
    base => 'rand',
    growth_factor => 2,
    max_tries => 5,
    tries => 3,
    retry_rules => [ sub { shift->code eq 'X' } ],
  );

  $retry->operation_result(Paws::Exception->new(code => 'X', message => 'X', request_id => ''));

  cmp_ok($retry->sleep_time, '>=', 0, 'Sleep is bigger than 0 secs');
  cmp_ok($retry->sleep_time, '<=', 4, 'Sleep is smaller than than 4 secs');
  ok($retry->should_retry, 'This should be retriable');

  $retry->one_more_try;
  $retry->operation_result(Paws::Exception->new(code => 'N', message => 'X', request_id => ''));

  ok(not($retry->should_retry), 'After changing to new exception, we should not retry');
}


done_testing;
