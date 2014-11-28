package Paws::S3::LifecycleConfiguration {
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::Rule]', required => 1);
}
1;
