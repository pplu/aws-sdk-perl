
package Paws::GlobalAccelerator::UpdateCustomRoutingListenerResponse;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingListener');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingListenerResponse

=head1 ATTRIBUTES


=head2 Listener => L<Paws::GlobalAccelerator::CustomRoutingListener>

Information for the updated listener for a custom routing accelerator.


=head2 _request_id => Str


=cut

1;