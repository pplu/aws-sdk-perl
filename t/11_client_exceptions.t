#!/usr/bin/env perl

use Paws;
use Test::Exception;
use Test::More;
use Data::Dumper;

use lib 't/lib';
use Test::CustomCredentials;

package Test11Caller {
  use Moose;
  extends 'TestResponseRecorder';

  has '+conversation_dir' => (default => 't/11_client_exceptions/');
}

my $do_real_calls = $ENV{'PAWS_RUN_REAL_CALLS'} || 0;
my $caller = Test11Caller->new(
  conversation_dir => 't/11_client_exceptions/',
  replay_calls => (not $do_real_calls),
);

# CustomCredentials has some invented AK and SK. Since
# we always want calls to fail, we'll use this
my $creds = Test::CustomCredentials->new;

my $p = Paws->new(config => { caller => $caller, credentials => $creds });

throws_ok {
  $p->service('EC2', region => 'eu-west-1')->DescribeInstances;
} 'Paws::Exception', 'got exception';

cmp_ok($@->message, 'eq', 'AWS was not able to validate the provided access credentials', 'EC2 exception');
cmp_ok($@->code, 'eq', 'AuthFailure', 'Correct code');
cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

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

cmp_ok($@->message, 'eq', 'Bad Request', 'S3 exception');
cmp_ok($@->code, 'eq', '400', 'Correct code');
cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

throws_ok {
  $p->service('Route53', region => 'eu-west-1')->ListHostedZones;
} 'Paws::Exception', 'got exception';

cmp_ok($@->message, 'eq', 'Bad Request', 'Route53 exception');
cmp_ok($@->code, 'eq', '400', 'Correct code');
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

cmp_ok($@->message, 'eq', 'Signature expired: 20150605T230052Z is now earlier than 20150605T230936Z (20150605T231436Z - 5 min.)', 'CloudWatchLogs exception');
cmp_ok($@->code, 'eq', 'InvalidSignatureException', 'Correct code');
cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

throws_ok {
  $p->service('Lambda', region => 'eu-west-1')->ListFunctions;
} 'Paws::Exception', 'got exception';

cmp_ok($@->message, 'eq', 'Signature expired: 20150605T230053Z is now earlier than 20150605T230937Z (20150605T231437Z - 5 min.)', 'Lambda exception');
cmp_ok($@->code, 'eq', 'InvalidSignatureException', 'Correct code');
cmp_ok($@->request_id, 'eq', '000000000000000000000000000000000000', 'Correct Request ID');

throws_ok {
  $p->service('Glacier', region => 'eu-west-1')->ListVaults(accountId => 'X');
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

done_testing;
