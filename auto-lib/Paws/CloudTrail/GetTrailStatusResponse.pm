
package Paws::CloudTrail::GetTrailStatusResponse;
  use Moose;
  has IsLogging => (is => 'ro', isa => 'Bool');
  has LatestCloudWatchLogsDeliveryError => (is => 'ro', isa => 'Str');
  has LatestCloudWatchLogsDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestDeliveryAttemptSucceeded => (is => 'ro', isa => 'Str');
  has LatestDeliveryAttemptTime => (is => 'ro', isa => 'Str');
  has LatestDeliveryError => (is => 'ro', isa => 'Str');
  has LatestDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestDigestDeliveryError => (is => 'ro', isa => 'Str');
  has LatestDigestDeliveryTime => (is => 'ro', isa => 'Str');
  has LatestNotificationAttemptSucceeded => (is => 'ro', isa => 'Str');
  has LatestNotificationAttemptTime => (is => 'ro', isa => 'Str');
  has LatestNotificationError => (is => 'ro', isa => 'Str');
  has LatestNotificationTime => (is => 'ro', isa => 'Str');
  has StartLoggingTime => (is => 'ro', isa => 'Str');
  has StopLoggingTime => (is => 'ro', isa => 'Str');
  has TimeLoggingStarted => (is => 'ro', isa => 'Str');
  has TimeLoggingStopped => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetTrailStatusResponse

=head1 ATTRIBUTES


=head2 IsLogging => Bool

Whether the CloudTrail is currently logging AWS API calls.


=head2 LatestCloudWatchLogsDeliveryError => Str

Displays any CloudWatch Logs error that CloudTrail encountered when
attempting to deliver logs to CloudWatch Logs.


=head2 LatestCloudWatchLogsDeliveryTime => Str

Displays the most recent date and time when CloudTrail delivered logs
to CloudWatch Logs.


=head2 LatestDeliveryAttemptSucceeded => Str

This field is deprecated.


=head2 LatestDeliveryAttemptTime => Str

This field is deprecated.


=head2 LatestDeliveryError => Str

Displays any Amazon S3 error that CloudTrail encountered when
attempting to deliver log files to the designated bucket. For more
information see the topic Error Responses
(http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html) in
the Amazon S3 API Reference.

This error occurs only when there is a problem with the destination S3
bucket and will not occur for timeouts. To resolve the issue, create a
new bucket and call C<UpdateTrail> to specify the new bucket, or fix
the existing objects so that CloudTrail can again write to the bucket.


=head2 LatestDeliveryTime => Str

Specifies the date and time that CloudTrail last delivered log files to
an account's Amazon S3 bucket.


=head2 LatestDigestDeliveryError => Str

Displays any Amazon S3 error that CloudTrail encountered when
attempting to deliver a digest file to the designated bucket. For more
information see the topic Error Responses
(http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html) in
the Amazon S3 API Reference.

This error occurs only when there is a problem with the destination S3
bucket and will not occur for timeouts. To resolve the issue, create a
new bucket and call C<UpdateTrail> to specify the new bucket, or fix
the existing objects so that CloudTrail can again write to the bucket.


=head2 LatestDigestDeliveryTime => Str

Specifies the date and time that CloudTrail last delivered a digest
file to an account's Amazon S3 bucket.


=head2 LatestNotificationAttemptSucceeded => Str

This field is deprecated.


=head2 LatestNotificationAttemptTime => Str

This field is deprecated.


=head2 LatestNotificationError => Str

Displays any Amazon SNS error that CloudTrail encountered when
attempting to send a notification. For more information about Amazon
SNS errors, see the Amazon SNS Developer Guide
(http://docs.aws.amazon.com/sns/latest/dg/welcome.html).


=head2 LatestNotificationTime => Str

Specifies the date and time of the most recent Amazon SNS notification
that CloudTrail has written a new log file to an account's Amazon S3
bucket.


=head2 StartLoggingTime => Str

Specifies the most recent date and time when CloudTrail started
recording API calls for an AWS account.


=head2 StopLoggingTime => Str

Specifies the most recent date and time when CloudTrail stopped
recording API calls for an AWS account.


=head2 TimeLoggingStarted => Str

This field is deprecated.


=head2 TimeLoggingStopped => Str

This field is deprecated.


=head2 _request_id => Str


=cut

1;