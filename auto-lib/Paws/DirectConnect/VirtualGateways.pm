
package Paws::DirectConnect::VirtualGateways;
  use Moose;
  has VirtualGateways => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualGateway]', traits => ['Unwrapped'], xmlname => 'virtualGateways' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualGateways

=head1 ATTRIBUTES


=head2 VirtualGateways => ArrayRef[L<Paws::DirectConnect::VirtualGateway>]

A list of virtual private gateways.




=cut

1;