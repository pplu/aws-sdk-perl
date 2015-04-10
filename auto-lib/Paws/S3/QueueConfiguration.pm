package Paws::S3::QueueConfiguration {
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Id => (is => 'ro', isa => 'Str');
  has QueueArn => (is => 'ro', isa => 'Str', required => 1);
}
1;
