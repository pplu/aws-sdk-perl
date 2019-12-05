
package Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult;
  use Moose;
  has MulticastDomainAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TransitGatewayMulticastDomainAssociation]', request_name => 'multicastDomainAssociations', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetTransitGatewayMulticastDomainAssociationsResult

=head1 ATTRIBUTES


=head2 MulticastDomainAssociations => ArrayRef[L<Paws::EC2::TransitGatewayMulticastDomainAssociation>]

Information about the multicast domain associations.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

