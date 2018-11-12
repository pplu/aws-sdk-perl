
package Paws::EC2::AssociateRouteTableResult;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateRouteTableResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

The route table association ID. This ID is required for disassociating
the route table.


=head2 _request_id => Str


=cut

