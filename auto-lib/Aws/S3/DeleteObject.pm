
package Aws::S3::DeleteObject {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MFA => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::DeleteObjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectResult');
}
1;
