
package Paws::EC2::ReplaceNetworkAclAssociationResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NewAssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'newAssociationId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceNetworkAclAssociationResult

=head1 ATTRIBUTES

=head2 NewAssociationId => Str

  

The ID of the new association.











=cut

