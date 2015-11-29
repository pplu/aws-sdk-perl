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
    tries => 0
  );
  $retry->operation_result(Paws::Exception->new(code => 'X', message => 'X', request_id => ''));

  $retry->one_more_try;

  cmp_ok($retry->sleep_time, '==', 0, 'Sleep of 0 secs');
  ok($retry->should_retry, 'This should be retriable');

  $retry->one_more_try;

  cmp_ok($retry->sleep_time, '==', 6, 'Sleep of 6 secs');
  ok($retry->should_retry, 'This should be retriable');

  $retry->one_more_try;

  cmp_ok($retry->sleep_time, '==', 12, 'Sleep of 12 secs');
  ok($retry->should_retry, 'This should be retriable');

  $retry->one_more_try;

  cmp_ok($retry->sleep_time, '==', 18, 'Sleep of 18 secs');
  ok($retry->should_retry, 'This should be retriable');

  $retry->one_more_try;

  cmp_ok($retry->sleep_time, '==', 24, 'Sleep of 24 secs');
  ok(not($retry->should_retry), 'Last attempt should not be retriable');

}

{
  my $retry = Paws::API::Retry->new(
    type => 'exponential',
    base => 'rand',
    growth_factor => 2,
    max_tries => 5,
    tries => 3
  );
  $retry->operation_result(Paws::Exception->new(code => 'X', message => 'X', request_id => ''));

  cmp_ok($retry->sleep_time, '>=', 0, 'Sleep is bigger than 0 secs');
  cmp_ok($retry->sleep_time, '<=', 4, 'Sleep is smaller than than 4 secs');
  ok($retry->should_retry, 'This should be retriable');
}


done_testing;
