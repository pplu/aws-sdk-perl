package Aws::ElastiCache::NotificationConfiguration {
  use Moose;
  with ('AWS::API::ResultParser');
  has TopicArn => (is => 'ro', isa => 'Str');
  has TopicStatus => (is => 'ro', isa => 'Str');
}
1
