
package Paws::GlobalAccelerator::CreateListenerResponse;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::GlobalAccelerator::Listener');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateListenerResponse

=head1 ATTRIBUTES


=head2 Listener => L<Paws::GlobalAccelerator::Listener>

The listener that you've created.


=head2 _request_id => Str


=cut

1;