package Paws::S3::TopicConfiguration {
  use Moose;
  has Event => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[Str]');
  has Id => (is => 'ro', isa => 'Str');
  has Topic => (is => 'ro', isa => 'Str');
}
1;
