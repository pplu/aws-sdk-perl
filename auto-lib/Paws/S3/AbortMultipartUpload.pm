
package Paws::S3::AbortMultipartUpload {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AbortMultipartUpload');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;