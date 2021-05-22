
package Paws::GlobalAccelerator::ListCustomRoutingAcceleratorsResponse;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::CustomRoutingAccelerator]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCustomRoutingAcceleratorsResponse

=head1 ATTRIBUTES


=head2 Accelerators => ArrayRef[L<Paws::GlobalAccelerator::CustomRoutingAccelerator>]

The list of custom routing accelerators for a customer account.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;