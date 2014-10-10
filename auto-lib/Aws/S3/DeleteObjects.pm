
package Aws::S3::DeleteObjects {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Delete => (is => 'ro', isa => 'Aws::S3::Delete', required => 1);
  has MFA => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::DeleteObjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteObjectsResult');
}
1;
