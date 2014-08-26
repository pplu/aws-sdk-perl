package Aws::SNS::MessageAttributeValue {
  use Moose;
  with ('AWS::API::ResultParser');
  has BinaryValue => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str', required => 1);
  has StringValue => (is => 'ro', isa => 'Str');
}
1
