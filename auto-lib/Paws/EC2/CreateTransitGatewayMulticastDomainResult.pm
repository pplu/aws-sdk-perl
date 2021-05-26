
package Paws::EC2::CreateTransitGatewayMulticastDomainResult;
  use Moose;
  has TransitGatewayMulticastDomain => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastDomain', request_name => 'transitGatewayMulticastDomain', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayMulticastDomainResult

=head1 ATTRIBUTES


=head2 TransitGatewayMulticastDomain => L<Paws::EC2::TransitGatewayMulticastDomain>

Information about the transit gateway multicast domain.


=head2 _request_id => Str


=cut

