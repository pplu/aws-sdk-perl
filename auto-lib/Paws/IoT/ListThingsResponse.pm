
package Paws::IoT::ListThingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Things => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingAttribute]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to retrieve the next value.



=head2 Things => ArrayRef[L<Paws::IoT::ThingAttribute>]

The things.




=cut

