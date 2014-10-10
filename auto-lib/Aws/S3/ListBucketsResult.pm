
package Aws::S3::ListBucketsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Buckets => (is => 'ro', isa => 'ArrayRef[Aws::S3::Bucket]', traits => ['Unwrapped'], xmlname => 'Bucket');
  has Owner => (is => 'ro', isa => 'Aws::S3::Owner');

}
1;