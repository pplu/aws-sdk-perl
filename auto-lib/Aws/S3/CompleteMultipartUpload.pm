
package Aws::S3::CompleteMultipartUpload {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has MultipartUpload => (is => 'ro', isa => 'Aws::S3::CompletedMultipartUpload', traits => ['NameInRequest'], request_name => 'CompleteMultipartUpload' );
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUpload');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::CompleteMultipartUploadResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteMultipartUploadResult');
}
1;
