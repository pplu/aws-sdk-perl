
package Paws::SQS::ListDeadLetterSourceQueues {
  use Moose;
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::ListDeadLetterSourceQueuesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueuesResult');
}
1;