
package Aws::IAM::ListAccessKeysResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessKeyMetadata => (is => 'ro', isa => 'ArrayRef[Aws::IAM::AccessKeyMetadata]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;