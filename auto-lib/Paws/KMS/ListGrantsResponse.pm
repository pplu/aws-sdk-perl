
package Paws::KMS::ListGrantsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::KMS::GrantListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;