
package Paws::CloudTrail::CreateTrailResponse;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has IsMultiRegionTrail => (is => 'ro', isa => 'Bool');
  has IsOrganizationTrail => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LogFileValidationEnabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicARN => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

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


=head2 IsMultiRegionTrail => Bool

Specifies whether the trail exists in one region or in all regions.


=head2 IsOrganizationTrail => Bool

Specifies whether the trail is an organization trail.


=head2 KmsKeyId => Str

Specifies the KMS key ID that encrypts the logs delivered by
CloudTrail. The value is a fully specified ARN to a KMS key in the
format:

C<arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012>


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
see Finding Your CloudTrail Log Files
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html).


=head2 SnsTopicARN => Str

Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send
notifications when log files are delivered. The format of a topic ARN
is:

C<arn:aws:sns:us-east-2:123456789012:MyTopic>


=head2 SnsTopicName => Str

This field is deprecated. Use SnsTopicARN.


=head2 TrailARN => Str

Specifies the ARN of the trail that was created. The format of a trail
ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>


=head2 _request_id => Str


=cut

1;