
package Aws::S3::GetBucketTaggingResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagSet => (is => 'ro', isa => 'ArrayRef[Aws::S3::Tag]', traits => ['Unwrapped'], xmlname => 'Tag', required => 1);

}
1;