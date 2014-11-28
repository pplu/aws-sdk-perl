
package Paws::S3::GetBucketPolicyOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Policy => (is => 'ro', isa => 'Str');

}
1;