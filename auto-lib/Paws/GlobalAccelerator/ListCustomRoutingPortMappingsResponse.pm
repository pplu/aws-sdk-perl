
package Paws::GlobalAccelerator::ListCustomRoutingPortMappingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PortMappings => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::PortMapping]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCustomRoutingPortMappingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 PortMappings => ArrayRef[L<Paws::GlobalAccelerator::PortMapping>]

The port mappings for a custom routing accelerator.


=head2 _request_id => Str


=cut

1;