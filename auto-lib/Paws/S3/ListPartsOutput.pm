
package Paws::S3::ListPartsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has Initiator => (is => 'ro', isa => 'Paws::S3::Initiator');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has MaxParts => (is => 'ro', isa => 'Int');
  has NextPartNumberMarker => (is => 'ro', isa => 'Int');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has PartNumberMarker => (is => 'ro', isa => 'Int');
  has Parts => (is => 'ro', isa => 'ArrayRef[Paws::S3::Part]');
  has StorageClass => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str');

}
1;