
package Paws::IoT::ListPrincipalThingsResponse;
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');
  has things => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalThingsResponse

=head1 ATTRIBUTES

=head2 nextToken => Str

  

A token used to retrieve the next value.









=head2 things => ArrayRef[Str]

  

The things.











=cut

