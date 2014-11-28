
package Paws::S3::GetBucketRequestPaymentOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Payer => (is => 'ro', isa => 'Str');

}
1;