
package Paws::S3::GetBucketLocationOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has LocationConstraint => (is => 'ro', isa => 'Str');

}
1;