#!/usr/bin/env perl

use Paws;
use Test::Exception;
use Test::More;
use Data::Dumper;

use lib 't/lib';
use Test::CustomCredentials;
use Module::Runtime qw/require_module/;

my $do_real_calls = $ENV{'PAWS_RUN_REAL_CALLS'} || 0;

foreach $caller_code ('Furl', 'HTTPTiny', 'LWP') {
  my $caller_name = "${caller_code}ResponseRecorder";

  eval {
    require_module $caller_name;
  };
  if ($@){
    diag "Skipping $caller_name due to probem loading: $@";
    next;
  }

  my $caller_dir = 't/11_client_exceptions_' . lc($caller_code) . '/';
  diag "Testing with caller $caller_name";
  my $caller = $caller_name->new(
    conversation_dir => $caller_dir,
    replay_calls => (not $do_real_calls),
  );
  
  # CustomCredentials has some invented AK and SK. Since
  # we always want calls to fail, we'll use this
  my $creds = Test::CustomCredentials->new;
  
  my $p = Paws->new(config => { caller => $caller, credentials => $creds });
  
  throws_ok {
    $p->service('EC2', region => 'eu-west-1')->DescribeInstances;
  } 'Paws::Exception', 'got exception for invalid creds';
  
  cmp_ok($@->message, 'eq', 'AWS was not able to validate the provided access credentials', 'EC2 exception');
  cmp_ok($@->code, 'eq', 'AuthFailure', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  # The second time around, the responses are retriable exceptions. This was not working with Test::Timer::time_atleast,
  # so I had to do it by hand.
  my $t1 = time;
  throws_ok {
    $p->service('EC2', region => 'www')->DescribeInstances;
  } 'Paws::Exception', 'got exception';
  my $t2 = time;
  cmp_ok($t2 - $t1, '>', 1, 'Got the exception after some retries');
  
  like($@->message, qr/ec2\.www\.amazonaws\.com/, 'EC2 exception says something about an invalid ec2.www.amazonaws.com');
  cmp_ok($@->code, 'eq', 'ConnectionError', 'Correct code');
  cmp_ok($@->request_id, 'eq', '', 'No Request ID for a connection error');
  
  
  throws_ok {
    $p->service('SQS', region => 'eu-west-1')->ListQueues;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'SQS exception');
  cmp_ok($@->code, 'eq', 'InvalidClientTokenId', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('IAM')->ListUsers;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'IAM exception');
  cmp_ok($@->code, 'eq', 'InvalidClientTokenId', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('DynamoDB', region => 'eu-west-1')->ListTables;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'DynamoDB exception');
  cmp_ok($@->code, 'eq', 'UnrecognizedClientException', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('S3', region => 'eu-west-1')->ListBuckets;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'Forbidden', 'S3 exception');
  cmp_ok($@->code, 'eq', '403', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('Route53', region => 'eu-west-1')->ListHostedZones;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'Forbidden', 'Route53 exception');
  cmp_ok($@->code, 'eq', '403', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('SDB', region => 'eu-west-1')->ListDomains;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The AWS Access Key Id you provided does not exist in our records.', 'SDB exception');
  cmp_ok($@->code, 'eq', 'InvalidClientTokenId', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('CloudWatchLogs', region => 'eu-west-1')->DescribeLogGroups;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'CloudWatchLogs exception');
  cmp_ok($@->code, 'eq', 'UnrecognizedClientException', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('Lambda', region => 'eu-west-1')->ListFunctions;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'Lambda exception');
  cmp_ok($@->code, 'eq', 'UnrecognizedClientException', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('Glacier', region => 'eu-west-1')->ListVaults(AccountId => 'X');
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'Required parameter missing: API version', 'Glacier exception');
  cmp_ok($@->code, 'eq', 'MissingParameterValueException', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');
  
  throws_ok {
    $p->service('CloudSearch', region => 'eu-west-1')->ListDomainNames;
  } 'Paws::Exception', 'got exception';
  
  cmp_ok($@->message, 'eq', 'The security token included in the request is invalid.', 'CloudSearch exception');
  cmp_ok($@->code, 'eq', 'InvalidClientTokenId', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

  throws_ok {
    $p->service('Kinesis', region => 'eu-west-1')->ListStreams;
  } 'Paws::Exception', 'got exception';

  cmp_ok($@->message, 'eq', '', 'Kinesis blank exception text Issue #82');
  cmp_ok($@->code, 'eq', 'InternalError', 'Correct code');
  cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

}
  
done_testing;
