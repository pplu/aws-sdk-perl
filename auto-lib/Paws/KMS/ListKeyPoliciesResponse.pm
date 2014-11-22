
package Paws::KMS::ListKeyPoliciesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextMarker => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;