
package Paws::EC2::DisassociateClientVpnTargetNetworkResult;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Paws::EC2::AssociationStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateClientVpnTargetNetworkResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

The ID of the target network association.


=head2 Status => L<Paws::EC2::AssociationStatus>

The current state of the target network association.


=head2 _request_id => Str


=cut

