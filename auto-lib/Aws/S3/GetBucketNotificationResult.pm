
package Aws::S3::GetBucketNotificationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TopicConfiguration => (is => 'ro', isa => 'Aws::S3::TopicConfiguration');

}
1;