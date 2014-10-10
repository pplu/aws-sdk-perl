
package Aws::S3::GetBucketCorsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has CORSRules => (is => 'ro', isa => 'ArrayRef[Aws::S3::CORSRule]', traits => ['Unwrapped'], xmlname => 'CORSRule');

}
1;