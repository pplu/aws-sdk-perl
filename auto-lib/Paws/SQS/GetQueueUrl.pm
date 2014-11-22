
package Paws::SQS::GetQueueUrl {
  use Moose;
  has QueueName => (is => 'ro', isa => 'Str', required => 1);
  has QueueOwnerAWSAccountId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::GetQueueUrlResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueUrlResult');
}
1;