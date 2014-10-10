
package Aws::S3::GetBucketLifecycleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Rules => (is => 'ro', isa => 'ArrayRef[Aws::S3::Rule]', traits => ['Unwrapped'], xmlname => 'Rule');

}
1;