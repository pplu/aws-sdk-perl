
package Paws::IoT::CreateThingTypeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ThingTypeArn => (is => 'ro', isa => Str);
  has ThingTypeId => (is => 'ro', isa => Str);
  has ThingTypeName => (is => 'ro', isa => Str);

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
               'ThingTypeArn' => {
                                   'type' => 'Str'
                                 },
               'ThingTypeName' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'ThingTypeId' => 'thingTypeId',
                       'ThingTypeArn' => 'thingTypeArn',
                       'ThingTypeName' => 'thingTypeName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingTypeResponse

=head1 ATTRIBUTES


=head2 ThingTypeArn => Str

The Amazon Resource Name (ARN) of the thing type.


=head2 ThingTypeId => Str

The thing type ID.


=head2 ThingTypeName => Str

The name of the thing type.


=head2 _request_id => Str


=cut

