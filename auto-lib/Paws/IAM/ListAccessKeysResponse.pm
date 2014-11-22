
package Paws::IAM::ListAccessKeysResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AccessKeyMetadata => (is => 'ro', isa => 'ArrayRef[Paws::IAM::AccessKeyMetadata]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');

}
1;