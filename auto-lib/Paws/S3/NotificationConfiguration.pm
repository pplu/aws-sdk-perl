package Paws::S3::NotificationConfiguration {
  use Moose;
  has CloudFunctionConfiguration => (is => 'ro', isa => 'Paws::S3::CloudFunctionConfiguration');
  has QueueConfiguration => (is => 'ro', isa => 'Paws::S3::QueueConfiguration');
  has TopicConfiguration => (is => 'ro', isa => 'Paws::S3::TopicConfiguration');
}
1;
