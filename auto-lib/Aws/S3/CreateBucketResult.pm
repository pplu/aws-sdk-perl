
package Aws::S3::CreateBucketResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Location => (is => 'ro', isa => 'Str');

}
1;