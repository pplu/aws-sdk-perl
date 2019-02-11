
package Paws::GlobalAccelerator::ListListenersResponse;
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Listener]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListListenersResponse

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[L<Paws::GlobalAccelerator::Listener>]

The list of listeners for an accelerator.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;