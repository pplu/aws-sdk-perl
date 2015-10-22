
package Paws::DirectConnect::Connections;
  use Moose;
  has Connections => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Connection]', traits => ['Unwrapped'], xmlname => 'connections' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Connections

=head1 ATTRIBUTES

=head2 Connections => ArrayRef[L<Paws::DirectConnect::Connection>]

  A list of connections.


=cut

1;