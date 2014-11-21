
package Aws::KMS::ListKeyPoliciesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextMarker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;