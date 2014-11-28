package Paws::S3::CompletedMultipartUpload {
  use Moose;
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::S3::CompletedPart]');
}
1;
