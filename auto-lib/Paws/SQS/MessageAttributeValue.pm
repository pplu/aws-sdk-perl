package Paws::SQS::MessageAttributeValue {
  use Moose;
  has BinaryListValues => (is => 'ro', isa => 'ArrayRef[Str]');
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringListValues => (is => 'ro', isa => 'ArrayRef[Str]');
  has StringValue => (is => 'ro', isa => 'Str');
}
1;
