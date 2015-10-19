
package Paws::DirectConnect::Interconnects;
  use Moose;
  has Interconnects => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Interconnect]', traits => ['Unwrapped'], xmlname => 'interconnects' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnects

=head1 ATTRIBUTES

=head2 Interconnects => ArrayRef[L<Paws::DirectConnect::Interconnect>]

  A list of interconnects.


=cut

1;