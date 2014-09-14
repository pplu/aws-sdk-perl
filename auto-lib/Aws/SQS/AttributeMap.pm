package Aws::SQS::AttributeMap {
  use Moose;
  with 'AWS::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');

  has ApproximateFirstReceiveTimestamp => (is => 'ro', isa => 'Str');
  has ApproximateFirstReceiveTimestamp => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
  has ApproximateReceiveCount => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DelaySeconds => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str');
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
  has RedrivePolicy => (is => 'ro', isa => 'Str');
  has SenderId => (is => 'ro', isa => 'Str');
  has SentTimestamp => (is => 'ro', isa => 'Str');
  has SentTimestamp => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
}
1
