package Aws::SQS::BatchResultErrorEntry {
  use Moose;
  with ('AWS::API::ResultParser');
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has SenderFault => (is => 'ro', isa => 'Bool', required => 1);
}
1
