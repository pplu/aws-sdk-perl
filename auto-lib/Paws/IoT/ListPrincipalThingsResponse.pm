
package Paws::IoT::ListPrincipalThingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Things => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to retrieve the next value.



=head2 Things => ArrayRef[Str]

The things.




=cut

