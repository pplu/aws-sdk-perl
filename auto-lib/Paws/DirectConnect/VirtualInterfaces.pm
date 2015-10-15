
package Paws::DirectConnect::VirtualInterfaces;
  use Moose;
  has VirtualInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::VirtualInterface]', traits => ['Unwrapped'], xmlname => 'virtualInterfaces' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterfaces

=head1 ATTRIBUTES

=head2 VirtualInterfaces => ArrayRef[L<Paws::DirectConnect::VirtualInterface>]

  A list of virtual interfaces.


=cut

1;