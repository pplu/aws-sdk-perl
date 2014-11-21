
package Aws::KMS::ListGrantsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Grants => (is => 'ro', isa => 'ArrayRef[Aws::KMS::GrantListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;