package Paws::S3::QueueConfiguration {
  use Moose;
  has Event => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[Str]');
  has Id => (is => 'ro', isa => 'Str');
  has Queue => (is => 'ro', isa => 'Str');
}
1;
