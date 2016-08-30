
package Paws::ELBv2::ModifyListenerOutput;
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Listener]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyListenerOutput

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[L<Paws::ELBv2::Listener>]

Information about the modified listeners.




=cut

