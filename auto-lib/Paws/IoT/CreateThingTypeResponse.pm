
package Paws::IoT::CreateThingTypeResponse;
  use Moose;
  has ThingTypeArn => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'thingTypeArn');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'thingTypeName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

The Amazon Resource Name (ARN) of the thing type.


=head2 ThingTypeName => Str

The name of the thing type.


=head2 _request_id => Str


=cut

