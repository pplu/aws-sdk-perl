
package Paws::S3::GetBucketNotificationOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CloudFunctionConfiguration => (is => 'ro', isa => 'Paws::S3::CloudFunctionConfiguration');
  has QueueConfiguration => (is => 'ro', isa => 'Paws::S3::QueueConfiguration');
  has TopicConfiguration => (is => 'ro', isa => 'Paws::S3::TopicConfiguration');

}
1;