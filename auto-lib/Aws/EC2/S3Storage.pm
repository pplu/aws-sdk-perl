package Aws::EC2::S3Storage {
  use Moose;
  with ('AWS::API::UnwrappedParser');
  has AWSAccessKeyId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'bucket');
  has Prefix => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'prefix');
  has UploadPolicy => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicy');
  has UploadPolicySignature => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'uploadPolicySignature');
}
1
