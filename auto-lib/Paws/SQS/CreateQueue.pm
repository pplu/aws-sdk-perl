
package Paws::SQS::CreateQueue {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SQS::AttributeMap');
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::CreateQueueResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');
}
1;