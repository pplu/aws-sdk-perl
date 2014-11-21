
package Aws::SQS::ListQueues {
  use Moose;
  has QueueNamePrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::ListQueuesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListQueuesResult');
}
1;