
package Paws::IoT::CreateThingResponse;
  use Moose;
  has thingArn => (is => 'ro', isa => 'Str');
  has thingName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingResponse

=head1 ATTRIBUTES

=head2 thingArn => Str

  The thing ARN.
=head2 thingName => Str

  The name of the thing.


=cut

