package Aws::S3::CompletedMultipartUpload {
  use Moose;
  has Parts => (is => 'ro', isa => 'ArrayRef[Aws::S3::CompletedPart]', traits => ['Unwrapped'], xmlname => 'Part');
}
1
