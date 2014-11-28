
package Paws::S3::ListObjectVersionsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::S3::CommonPrefix]');
  has DeleteMarkers => (is => 'ro', isa => 'ArrayRef[Paws::S3::DeleteMarkerEntry]');
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextKeyMarker => (is => 'ro', isa => 'Str');
  has NextVersionIdMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');
  has VersionIdMarker => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::S3::ObjectVersion]');

}
1;