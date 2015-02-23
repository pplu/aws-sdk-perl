package Paws::SQS::MessageAttributeValue {
  use Moose;
  has BinaryListValues => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'BinaryListValue', traits => ['Unwrapped']);
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringListValues => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'StringListValue', traits => ['Unwrapped']);
  has StringValue => (is => 'ro', isa => 'Str');
}
1;
