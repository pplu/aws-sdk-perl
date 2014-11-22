
package Paws::KMS::ListKeysResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Keys => (is => 'ro', isa => 'ArrayRef[Paws::KMS::KeyListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;