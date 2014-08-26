package Aws::SQS::AttributeMap {
  use Moose;
  with 'AWS::API::MapParser';
  has ApproximateNumberOfMessages => (is => 'ro', isa => 'Str');
1
  has ApproximateNumberOfMessagesDelayed => (is => 'ro', isa => 'Str');
1
  has ApproximateNumberOfMessagesNotVisible => (is => 'ro', isa => 'Str');
1
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
1
  has DelaySeconds => (is => 'ro', isa => 'Str');
1
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
1
  has MaximumMessageSize => (is => 'ro', isa => 'Str');
1
  has MessageRetentionPeriod => (is => 'ro', isa => 'Str');
1
  has Policy => (is => 'ro', isa => 'Str');
1
  has QueueArn => (is => 'ro', isa => 'Str');
1
  has ReceiveMessageWaitTimeSeconds => (is => 'ro', isa => 'Str');
1
  has RedrivePolicy => (is => 'ro', isa => 'Str');
1
  has VisibilityTimeout => (is => 'ro', isa => 'Str');
1
}
1
