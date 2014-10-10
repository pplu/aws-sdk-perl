package Aws::S3::Delete {
  use Moose;
  has Objects => (is => 'ro', isa => 'ArrayRef[Aws::S3::ObjectIdentifier]', traits => ['Unwrapped'], xmlname => 'Object', required => 1);
  has Quiet => (is => 'ro', isa => 'Bool');
}
1
