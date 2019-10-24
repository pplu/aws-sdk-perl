
package Paws::IoT::CreateDynamicThingGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has IndexName => (is => 'ro', isa => Str);
  has QueryString => (is => 'ro', isa => Str);
  has QueryVersion => (is => 'ro', isa => Str);
  has ThingGroupArn => (is => 'ro', isa => Str);
  has ThingGroupId => (is => 'ro', isa => Str);
  has ThingGroupName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryVersion' => {
                                   'type' => 'Str'
                                 },
               'IndexName' => {
                                'type' => 'Str'
                              },
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
                                 },
               'QueryString' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'QueryVersion' => 'queryVersion',
                       'IndexName' => 'indexName',
                       'ThingGroupName' => 'thingGroupName',
                       'ThingGroupArn' => 'thingGroupArn',
                       'ThingGroupId' => 'thingGroupId',
                       'QueryString' => 'queryString'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDynamicThingGroupResponse

=head1 ATTRIBUTES


=head2 IndexName => Str

The dynamic thing group index name.


=head2 QueryString => Str

The dynamic thing group search query string.


=head2 QueryVersion => Str

The dynamic thing group query version.


=head2 ThingGroupArn => Str

The dynamic thing group ARN.


=head2 ThingGroupId => Str

The dynamic thing group ID.


=head2 ThingGroupName => Str

The dynamic thing group name.


=head2 _request_id => Str


=cut

