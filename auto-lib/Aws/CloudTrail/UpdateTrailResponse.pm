
package Aws::CloudTrail::UpdateTrailResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str');
  has IncludeGlobalServiceEvents => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');
  has SnsTopicName => (is => 'ro', isa => 'Str');

}
1;