package Paws::S3::BucketLifecycleConfiguration;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::S3::LifecycleRule]', xmlname => 'Rule', request_name => 'Rule', traits => ['Unwrapped','NameInRequest'], required => 1);
1;
