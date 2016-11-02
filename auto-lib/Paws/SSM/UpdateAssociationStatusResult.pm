
package Paws::SSM::UpdateAssociationStatusResult;
  use Moose;
  has AssociationDescription => (is => 'ro', isa => 'Paws::SSM::AssociationDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociationStatusResult

=head1 ATTRIBUTES


=head2 AssociationDescription => L<Paws::SSM::AssociationDescription>

Information about the association.


=head2 _request_id => Str


=cut

1;