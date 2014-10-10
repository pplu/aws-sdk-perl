
package Aws::S3::UploadPart {
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentMD5 => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has PartNumber => (is => 'ro', isa => 'Int', required => 1);
  has SSECustomerAlgorithm => (is => 'ro', isa => 'Str');
  has SSECustomerKey => (is => 'ro', isa => 'Str');
  has SSECustomerKeyMD5 => (is => 'ro', isa => 'Str');
  has UploadId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadPart');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::UploadPartResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadPartResult');
}
1;
