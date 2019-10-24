
package Paws::IoT::CreateThingResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ThingArn => (is => 'ro', isa => Str);
  has ThingId => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingId' => {
                              'type' => 'Str'
                            },
               'ThingArn' => {
                               'type' => 'Str'
                             },
               'ThingName' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ThingId' => 'thingId',
                       'ThingArn' => 'thingArn',
                       'ThingName' => 'thingName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingResponse

=head1 ATTRIBUTES


=head2 ThingArn => Str

The ARN of the new thing.


=head2 ThingId => Str

The thing ID.


=head2 ThingName => Str

The name of the new thing.


=head2 _request_id => Str


=cut

