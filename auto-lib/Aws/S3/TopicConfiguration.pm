package Aws::S3::TopicConfiguration {
  use Moose;
  has Event => (is => 'ro', isa => 'Str');
  has Topic => (is => 'ro', isa => 'Str');
}
1
