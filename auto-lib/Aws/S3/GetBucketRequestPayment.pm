
package Aws::S3::GetBucketRequestPayment {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketRequestPayment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::GetBucketRequestPaymentResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketRequestPaymentResult');
}
1;
