package Aws::S3::MultipartUpload {
  use Moose;
  has Initiated => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Aws::S3::Initiator');
  has Key => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');
  has StorageClass => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');
}
1
