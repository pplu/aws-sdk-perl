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

use Paws;
use Paws::Credential::Explicit;

package Test16Caller {
  use Moose;
  with 'Paws::Net::RetryCallerRole', 'Paws::Net::CallerRole';
  use Paws::Net::APIResponse;

  has calls => (
    is => 'ro',
    isa => 'Int',
    default => 0,
    traits => [ 'Counter' ],
    handles => {
      register_call => 'inc',
    }
  );

  has content_for_ok => (
    is => 'ro',
    isa => 'Str',
    default => '',
  );

  has calls_to_ok => (
    is => 'ro',
    isa => 'Int',
    default => 10,
  );

  sub do_call {
    my ($self, $service, $call_object) = @_;

    $self->register_call;

    if ($self->calls == $self->calls_to_ok) {
      return Paws::Net::APIResponse->new(
        status => 200,
        content => $self->content_for_ok,
        headers => {},
      );
    }

    return Paws::Net::APIResponse->new(
      status  => 503,
      content => '',
      headers => {}
    );
  }

  sub caller_to_response {
    my ($self, $service, $call_object, $response) = @_;

    if ($response->status == 599){
      return Paws::Exception->new(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      return $service->response_to_object->process($call_object, $response);
    }
  }
}

{
  my $paws = Paws->new(config => {
    caller => Test16Caller->new,
    credentials => Paws::Credential::Explicit->new(
      access_key => 'x',
      secret_key => 'y',
    )
  });
  my $sqs = $paws->service('SQS', region => 'eu-west-1');
  
  eval { $sqs->CreateQueue(QueueName => 'x'); };
  
  cmp_ok($@->code, 'eq', 'InvalidContent', 'Got an invalid content exception');
  cmp_ok($sqs->caller->calls, '==', 5, 'Did 5 failing calls');
} 

{
  my $paws = Paws->new(config => {
    caller => Test16Caller->new(
      calls_to_ok => 3,
      content_for_ok => '<CreateQueueResponse><CreateQueueResult><QueueUrl>http://sqs.us-east-1.amazonaws.com/123456789012/testQueue</QueueUrl></CreateQueueResult><ResponseMetadata><RequestId>7a62c49f-347e-4fc4-9331-6e8e7a96aa73</RequestId></ResponseMetadata></CreateQueueResponse>',
    ),
    credentials => Paws::Credential::Explicit->new(
      access_key => 'x',
      secret_key => 'y',
    )
  });
  my $sqs = $paws->service('SQS', region => 'eu-west-1');
  
  my $res = $sqs->CreateQueue(QueueName => 'x');

  cmp_ok($res->QueueUrl, 'eq', 'http://sqs.us-east-1.amazonaws.com/123456789012/testQueue', 'Got an valid result');
  cmp_ok($sqs->caller->calls, '==', 3, 'Did 3 calls until there was a success');
} 




done_testing;
