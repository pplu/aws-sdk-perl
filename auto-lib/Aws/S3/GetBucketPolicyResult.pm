
package Aws::S3::GetBucketPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Str');

}
1;