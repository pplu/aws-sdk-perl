
package Paws::SQS::DeleteMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::SQS::DeleteMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::DeleteMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteMessageBatchResult');
}
1;