
package Paws::S3::DeleteObjectOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has VersionId => (is => 'ro', isa => 'Str');

}
1;