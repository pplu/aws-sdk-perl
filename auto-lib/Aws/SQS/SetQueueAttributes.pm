
package Aws::SQS::SetQueueAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;