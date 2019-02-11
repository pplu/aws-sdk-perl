
package Paws::DirectConnect::VirtualGateways;
  use Moose;
  has VirtualGateways => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualGateway]', traits => ['NameInRequest'], request_name => 'virtualGateways' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualGateways

=head1 ATTRIBUTES


=head2 VirtualGateways => ArrayRef[L<Paws::DirectConnect::VirtualGateway>]

The virtual private gateways.


=head2 _request_id => Str


=cut

1;