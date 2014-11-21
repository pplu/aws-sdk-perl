
package Aws::KMS::ListAliasesResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Aliases => (is => 'ro', isa => 'ArrayRef[Aws::KMS::AliasListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;