
package Aws::KMS::DescribeKeyResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has KeyMetadata => (is => 'ro', isa => 'Aws::KMS::KeyMetadata');

}
1;