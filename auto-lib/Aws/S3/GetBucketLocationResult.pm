
package Aws::S3::GetBucketLocationResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LocationConstraint => (is => 'ro', isa => 'Str');

}
1;