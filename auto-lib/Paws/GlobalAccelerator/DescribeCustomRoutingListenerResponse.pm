
package Paws::GlobalAccelerator::DescribeCustomRoutingListenerResponse;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::GlobalAccelerator::CustomRoutingListener');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCustomRoutingListenerResponse

=head1 ATTRIBUTES


=head2 Listener => L<Paws::GlobalAccelerator::CustomRoutingListener>

The description of a listener for a custom routing accelerator.


=head2 _request_id => Str


=cut

1;