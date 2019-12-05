
package Paws::EC2::ReplaceRouteTableAssociationResult;
  use Moose;
  has AssociationState => (is => 'ro', isa => 'Paws::EC2::RouteTableAssociationState', request_name => 'associationState', traits => ['NameInRequest',]);
  has NewAssociationId => (is => 'ro', isa => 'Str', request_name => 'newAssociationId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceRouteTableAssociationResult

=head1 ATTRIBUTES


=head2 AssociationState => L<Paws::EC2::RouteTableAssociationState>

The state of the association.


=head2 NewAssociationId => Str

The ID of the new association.


=head2 _request_id => Str


=cut

