
package Paws::IoT::ListThingPrincipalsResponse;
  use Moose;
  has Principals => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipalsResponse

=head1 ATTRIBUTES


=head2 Principals => ArrayRef[Str]

The principals associated with the thing.




=cut

