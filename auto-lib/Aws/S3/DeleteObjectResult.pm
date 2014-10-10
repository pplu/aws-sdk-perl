
package Aws::S3::DeleteObjectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DeleteMarker => (is => 'ro', isa => 'Bool');
  has VersionId => (is => 'ro', isa => 'Str');

}
1;