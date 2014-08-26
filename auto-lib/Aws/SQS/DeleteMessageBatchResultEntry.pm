package Aws::SQS::DeleteMessageBatchResultEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Id => (is => 'ro', isa => 'Str', required => 1);
}
1
