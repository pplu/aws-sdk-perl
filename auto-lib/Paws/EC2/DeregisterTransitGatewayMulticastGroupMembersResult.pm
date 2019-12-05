
package Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult;
  use Moose;
  has DeregisteredMulticastGroupMembers => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastDeregisteredGroupMembers', request_name => 'deregisteredMulticastGroupMembers', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeregisterTransitGatewayMulticastGroupMembersResult

=head1 ATTRIBUTES


=head2 DeregisteredMulticastGroupMembers => L<Paws::EC2::TransitGatewayMulticastDeregisteredGroupMembers>

Information about the deregistered members.


=head2 _request_id => Str


=cut

