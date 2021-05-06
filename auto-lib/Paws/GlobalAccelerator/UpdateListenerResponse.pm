
package Paws::GlobalAccelerator::UpdateListenerResponse;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::GlobalAccelerator::Listener');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateListenerResponse

=head1 ATTRIBUTES


=head2 Listener => L<Paws::GlobalAccelerator::Listener>

Information for the updated listener.


=head2 _request_id => Str


=cut

1;