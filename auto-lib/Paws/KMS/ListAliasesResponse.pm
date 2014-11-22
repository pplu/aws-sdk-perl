
package Paws::KMS::ListAliasesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::KMS::AliasListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;