
package Paws::DirectConnect::Locations;
  use Moose;
  has Locations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Location]', traits => ['NameInRequest'], request_name => 'locations' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Locations

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[L<Paws::DirectConnect::Location>]

A list of colocation hubs where network providers have equipment. Most
regions have multiple locations available.




=cut

1;