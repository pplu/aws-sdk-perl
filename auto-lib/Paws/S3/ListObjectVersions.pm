
package Paws::S3::ListObjectVersions {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delimiter => (is => 'ro', isa => 'Str');
  has EncodingType => (is => 'ro', isa => 'Str');
  has KeyMarker => (is => 'ro', isa => 'Str');
  has MaxKeys => (is => 'ro', isa => 'Int');
  has Prefix => (is => 'ro', isa => 'Str');
  has VersionIdMarker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectVersionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListObjectVersionsResult');
}
1;