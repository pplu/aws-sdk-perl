
package Paws::IoT::ListThingsResponse;
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');
  has things => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingAttribute]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingsResponse

=head1 ATTRIBUTES

=head2 nextToken => Str

  

A token used to retrieve the next value.









=head2 things => ArrayRef[Paws::IoT::ThingAttribute]

  

The things.











=cut

