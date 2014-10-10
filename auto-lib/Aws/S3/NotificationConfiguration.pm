package Aws::S3::NotificationConfiguration {
  use Moose;
  has TopicConfiguration => (is => 'ro', isa => 'Aws::S3::TopicConfiguration', required => 1);
}
1
