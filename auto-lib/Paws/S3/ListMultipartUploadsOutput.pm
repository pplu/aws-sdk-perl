
package Paws::S3::ListMultipartUploadsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Bucket => (is => 'ro', isa => 'Str');
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxUploads => (is => 'ro', isa => 'Int');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextUploadIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has UploadIdMarker => (is => 'ro', isa => 'Str');
  has Uploads => (is => 'ro', isa => 'ArrayRef[Paws::S3::MultipartUpload]');

}
1;