
package Paws::EC2::RegisterTransitGatewayMulticastGroupMembersResult;
  use Moose;
  has RegisteredMulticastGroupMembers => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastRegisteredGroupMembers', request_name => 'registeredMulticastGroupMembers', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RegisterTransitGatewayMulticastGroupMembersResult

=head1 ATTRIBUTES


=head2 RegisteredMulticastGroupMembers => L<Paws::EC2::TransitGatewayMulticastRegisteredGroupMembers>

Information about the registered transit gateway multicast group
members.


=head2 _request_id => Str


=cut

