
package Aws::KMS::ListKeysResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Keys => (is => 'ro', isa => 'ArrayRef[Aws::KMS::KeyListEntry]');
  has NextMarker => (is => 'ro', isa => 'Str');
  has Truncated => (is => 'ro', isa => 'Bool');

}
1;