
package Paws::ELBv2::CreateListenerOutput;
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Listener]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateListenerOutput

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[L<Paws::ELBv2::Listener>]

Information about the listener.




=cut

