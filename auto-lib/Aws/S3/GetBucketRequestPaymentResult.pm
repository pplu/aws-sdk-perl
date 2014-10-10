
package Aws::S3::GetBucketRequestPaymentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Payer => (is => 'ro', isa => 'Str');

}
1;