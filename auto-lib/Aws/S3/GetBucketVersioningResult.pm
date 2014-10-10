
package Aws::S3::GetBucketVersioningResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has MfaDelete => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'MfaDelete');
  has Status => (is => 'ro', isa => 'Str');

}
1;