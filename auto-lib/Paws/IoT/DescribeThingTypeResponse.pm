
package Paws::IoT::DescribeThingTypeResponse;
  use Moose;
  has ThingTypeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingTypeArn');
  has ThingTypeId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingTypeId');
  has ThingTypeMetadata => (is => 'ro', isa => 'Paws::IoT::ThingTypeMetadata', traits => ['NameInRequest'], request_name => 'thingTypeMetadata');
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingTypeName');
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties', traits => ['NameInRequest'], request_name => 'thingTypeProperties');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

The thing type ARN.


=head2 ThingTypeId => Str

The thing type ID.


=head2 ThingTypeMetadata => L<Paws::IoT::ThingTypeMetadata>

The ThingTypeMetadata contains additional information about the thing
type including: creation date and time, a value indicating whether the
thing type is deprecated, and a date and time when it was deprecated.


=head2 ThingTypeName => Str

The name of the thing type.


=head2 ThingTypeProperties => L<Paws::IoT::ThingTypeProperties>

The ThingTypeProperties contains information about the thing type
including description, and a list of searchable thing attribute names.


=head2 _request_id => Str


=cut

