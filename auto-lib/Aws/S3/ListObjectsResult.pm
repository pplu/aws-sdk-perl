
package Aws::S3::ListObjectsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CommonPrefixes => (is => 'ro', isa => 'ArrayRef[Aws::S3::CommonPrefix]');
  has Contents => (is => 'ro', isa => 'ArrayRef[Aws::S3::Object]');
  has EncodingType => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Prefix => (is => 'ro', isa => 'Str');

}
1;