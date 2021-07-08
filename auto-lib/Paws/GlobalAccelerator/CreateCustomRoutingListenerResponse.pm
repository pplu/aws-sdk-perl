
package Paws::GlobalAccelerator::CreateCustomRoutingListenerResponse;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingListener');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateCustomRoutingListenerResponse

=head1 ATTRIBUTES


=head2 Listener => L<Paws::GlobalAccelerator::CustomRoutingListener>

The listener that you've created for a custom routing accelerator.


=head2 _request_id => Str


=cut

1;