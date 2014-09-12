package Aws::SQS::MessageAttributeValue {
  use Moose;
  has BinaryListValues => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'BinaryListValue');
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringListValues => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'StringListValue');
  has StringValue => (is => 'ro', isa => 'Str');
}
1
