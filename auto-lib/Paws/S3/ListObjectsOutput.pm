
package Paws::S3::ListObjectsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Paws::S3::Object]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');

}
1;