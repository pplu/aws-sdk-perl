
package Aws::SQS::DeleteMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Aws::SQS::DeleteMessageBatchRequestEntry]', traits => ['NameInRequest'], request_name => 'DeleteMessageBatchRequestEntry' , required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SQS::DeleteMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');
}
1;
  