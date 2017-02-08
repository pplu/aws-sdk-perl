
package Paws::IoT::DescribeThingTypeResponse;
  use Moose;
  has ThingTypeMetadata => (is => 'ro', isa => 'Paws::IoT::ThingTypeMetadata', traits => ['Unwrapped'], xmlname => 'thingTypeMetadata');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'thingTypeName');
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties', traits => ['Unwrapped'], xmlname => 'thingTypeProperties');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeMetadata => L<Paws::IoT::ThingTypeMetadata>




=head2 ThingTypeName => Str

The name of the thing type.


=head2 ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>

The ThingTypeProperties contains information about the thing type
including description, and a list of searchable thing attribute names.


=head2 _request_id => Str


=cut

