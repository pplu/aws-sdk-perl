
package Paws::SSM::UpdateAssociationResult;
  use Moose;
  has AssociationDescription => (is => 'ro', isa => 'Paws::SSM::AssociationDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateAssociationResult

=head1 ATTRIBUTES


=head2 AssociationDescription => L<Paws::SSM::AssociationDescription>

The description of the association that was updated.


=head2 _request_id => Str


=cut

1;