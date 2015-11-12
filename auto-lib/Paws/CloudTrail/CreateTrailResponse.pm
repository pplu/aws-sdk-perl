
package Paws::CloudTrail::CreateTrailResponse;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LogFileValidationEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has TrailARN => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateTrailResponse

=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroupArn => Str

  Specifies the Amazon Resource Name (ARN) of the log group to which
CloudTrail logs will be delivered.

=head2 CloudWatchLogsRoleArn => Str

  Specifies the role for the CloudWatch Logs endpoint to assume to write
to a user's log group.

=head2 IncludeGlobalServiceEvents => Bool

  Specifies whether the trail is publishing events from global services
such as IAM to the log files.

=head2 KmsKeyId => Str

  Specifies the KMS key ID that encrypts the logs delivered by
CloudTrail. The value is a fully specified ARN to a KMS key in the
format:

C<arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012>

=head2 LogFileValidationEnabled => Bool

  Specifies whether log file integrity validation is enabled.

=head2 Name => Str

  Specifies the name of the trail.

=head2 S3BucketName => Str

  Specifies the name of the Amazon S3 bucket designated for publishing
log files.

=head2 S3KeyPrefix => Str

  Specifies the Amazon S3 key prefix that comes after the name of the
bucket you have designated for log file delivery. For more information,
see Finding Your CloudTrail Log Files.

=head2 SnsTopicName => Str

  Specifies the name of the Amazon SNS topic defined for notification of
log file delivery.

=head2 TrailARN => Str

  Specifies the ARN of the trail that was created.


=cut

1;