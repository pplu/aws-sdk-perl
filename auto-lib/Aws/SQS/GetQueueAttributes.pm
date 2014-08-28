
package Aws::SQS::GetQueueAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueueAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::GetQueueAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetQueueAttributesResult');
}
1;
