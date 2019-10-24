
package Paws::IoT::DescribeThingTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_ThingTypeMetadata IoT_ThingTypeProperties/;
  has ThingTypeArn => (is => 'ro', isa => Str);
  has ThingTypeId => (is => 'ro', isa => Str);
  has ThingTypeMetadata => (is => 'ro', isa => IoT_ThingTypeMetadata);
  has ThingTypeName => (is => 'ro', isa => Str);
  has ThingTypeProperties => (is => 'ro', isa => IoT_ThingTypeProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingTypeId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingTypeProperties' => {
                                          'class' => 'Paws::IoT::ThingTypeProperties',
                                          'type' => 'IoT_ThingTypeProperties'
                                        },
               'ThingTypeArn' => {
                                   'type' => 'Str'
                                 },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  },
               'ThingTypeMetadata' => {
                                        'class' => 'Paws::IoT::ThingTypeMetadata',
                                        'type' => 'IoT_ThingTypeMetadata'
                                      }
             },
  'NameInRequest' => {
                       'ThingTypeId' => 'thingTypeId',
                       'ThingTypeProperties' => 'thingTypeProperties',
                       'ThingTypeArn' => 'thingTypeArn',
                       'ThingTypeName' => 'thingTypeName',
                       'ThingTypeMetadata' => 'thingTypeMetadata'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

The thing type ARN.


=head2 ThingTypeId => Str

The thing type ID.


=head2 ThingTypeMetadata => IoT_ThingTypeMetadata

The ThingTypeMetadata contains additional information about the thing
type including: creation date and time, a value indicating whether the
thing type is deprecated, and a date and time when it was deprecated.


=head2 ThingTypeName => Str

The name of the thing type.


=head2 ThingTypeProperties => IoT_ThingTypeProperties

The ThingTypeProperties contains information about the thing type
including description, and a list of searchable thing attribute names.


=head2 _request_id => Str


=cut

