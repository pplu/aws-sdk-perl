
package Paws::SQS::SendMessageBatch {
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::SQS::SendMessageBatchRequestEntry]', required => 1);
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendMessageBatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::SendMessageBatchResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendMessageBatchResult');
}
1;