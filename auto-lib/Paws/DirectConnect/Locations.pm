
package Paws::DirectConnect::Locations;
  use Moose;
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Location]', traits => ['Unwrapped'], xmlname => 'locations' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Locations

=head1 ATTRIBUTES

=head2 Locations => ArrayRef[L<Paws::DirectConnect::Location>]

  


=cut

1;