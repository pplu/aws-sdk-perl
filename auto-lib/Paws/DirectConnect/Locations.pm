
package Paws::DirectConnect::Locations {
  use Moose;
  with 'Paws::API::ResultParser';
  has locations => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Location]');

}

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Locations

=head1 ATTRIBUTES

=head2 locations => ArrayRef[Paws::DirectConnect::Location]

  


=cut

1;