
package Paws::EC2::RegisterTransitGatewayMulticastGroupSourcesResult;
  use Moose;
  has RegisteredMulticastGroupSources => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastRegisteredGroupSources', request_name => 'registeredMulticastGroupSources', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RegisterTransitGatewayMulticastGroupSourcesResult

=head1 ATTRIBUTES


=head2 RegisteredMulticastGroupSources => L<Paws::EC2::TransitGatewayMulticastRegisteredGroupSources>

Information about the transit gateway multicast group sources.


=head2 _request_id => Str


=cut

