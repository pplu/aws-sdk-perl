package Aws::DynamoDB::KeysAndAttributes {
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has Keys => (is => 'ro', isa => 'ArrayRef[Aws::DynamoDB::Key]', required => 1);
}
1
