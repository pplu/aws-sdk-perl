package Aws::S3::LifecycleConfiguration {
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Aws::S3::Rule]', traits => ['Unwrapped'], xmlname => 'Rule', required => 1);
}
1
