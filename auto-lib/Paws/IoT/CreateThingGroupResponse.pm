
package Paws::IoT::CreateThingGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has ThingGroupArn => (is => 'ro', isa => Str);
  has ThingGroupId => (is => 'ro', isa => Str);
  has ThingGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'ThingGroupArn' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingGroupId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'ThingGroupName' => 'thingGroupName',
                       'ThingGroupArn' => 'thingGroupArn',
                       'ThingGroupId' => 'thingGroupId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateThingGroupResponse

=head1 ATTRIBUTES


=head2 ThingGroupArn => Str

The thing group ARN.


=head2 ThingGroupId => Str

The thing group ID.


=head2 ThingGroupName => Str

The thing group name.


=head2 _request_id => Str


=cut

