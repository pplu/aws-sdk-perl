
package Paws::EC2::DeregisterTransitGatewayMulticastGroupSourcesResult;
  use Moose;
  has DeregisteredMulticastGroupSources => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastDeregisteredGroupSources', request_name => 'deregisteredMulticastGroupSources', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeregisterTransitGatewayMulticastGroupSourcesResult

=head1 ATTRIBUTES


=head2 DeregisteredMulticastGroupSources => L<Paws::EC2::TransitGatewayMulticastDeregisteredGroupSources>

Information about the deregistered group sources.


=head2 _request_id => Str


=cut

