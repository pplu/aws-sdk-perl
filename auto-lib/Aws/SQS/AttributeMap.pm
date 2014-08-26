package Aws::SQS::AttributeMap {
  use Moose;
  with 'AWS::API::MapParser';
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DelaySeconds => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str');
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
  has RedrivePolicy => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
}
1
