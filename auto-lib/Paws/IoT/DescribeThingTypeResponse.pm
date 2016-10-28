
package Paws::IoT::DescribeThingTypeResponse;
  use Moose;
  has ThingTypeMetadata => (is => 'ro', isa => 'Paws::IoT::ThingTypeMetadata');
  has ThingTypeName => (is => 'ro', isa => 'Str');
  has ThingTypeProperties => (is => 'ro', isa => 'Paws::IoT::ThingTypeProperties');

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




=cut

