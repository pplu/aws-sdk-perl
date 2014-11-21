package Aws::SQS::Message {
  use Moose;
  has Attributes => (is => 'ro', isa => 'Aws::SQS::AttributeMap');
  has Body => (is => 'ro', isa => 'Str');
  has MD5OfBody => (is => 'ro', isa => 'Str');
  has MD5OfMessageAttributes => (is => 'ro', isa => 'Str');
  has MessageAttributes => (is => 'ro', isa => 'Aws::SQS::MessageAttributeMap');
  has MessageId => (is => 'ro', isa => 'Str');
  has ReceiptHandle => (is => 'ro', isa => 'Str');
}
1;
