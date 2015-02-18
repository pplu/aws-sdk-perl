
package Paws::SSM::UpdateAssociationStatusResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has AssociationDescription => (is => 'ro', isa => 'Paws::SSM::AssociationDescription');

}

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociationStatusResult

=head1 ATTRIBUTES

=head2 AssociationDescription => Paws::SSM::AssociationDescription

  

Information about the association.











=cut

1;