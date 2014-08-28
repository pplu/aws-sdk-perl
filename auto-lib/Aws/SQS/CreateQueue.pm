
package Aws::SQS::CreateQueue {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', traits => ['NameInRequest'], request_name => 'Attribute' , traits => ['NameInRequest'], request_name => 'Value' );
  has QueueName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::CreateQueueResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateQueueResult');
}
1;
