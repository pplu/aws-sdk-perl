
package Paws::IoT::DescribeThingGroupResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_ThingGroupMetadata IoT_ThingGroupProperties/;
  has IndexName => (is => 'ro', isa => Str);
  has QueryString => (is => 'ro', isa => Str);
  has QueryVersion => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has ThingGroupArn => (is => 'ro', isa => Str);
  has ThingGroupId => (is => 'ro', isa => Str);
  has ThingGroupMetadata => (is => 'ro', isa => IoT_ThingGroupMetadata);
  has ThingGroupName => (is => 'ro', isa => Str);
  has ThingGroupProperties => (is => 'ro', isa => IoT_ThingGroupProperties);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'QueryString' => 'queryString',
                       'Status' => 'status',
                       'IndexName' => 'indexName',
                       'ThingGroupMetadata' => 'thingGroupMetadata',
                       'ThingGroupId' => 'thingGroupId',
                       'ThingGroupArn' => 'thingGroupArn',
                       'ThingGroupProperties' => 'thingGroupProperties',
                       'Version' => 'version',
                       'QueryVersion' => 'queryVersion',
                       'ThingGroupName' => 'thingGroupName'
                     },
  'types' => {
               'ThingGroupArn' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Int'
                            },
               'QueryVersion' => {
                                   'type' => 'Str'
                                 },
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'IndexName' => {
                                'type' => 'Str'
                              },
               'ThingGroupId' => {
                                   'type' => 'Str'
                                 },
               'ThingGroupProperties' => {
                                           'type' => 'IoT_ThingGroupProperties',
                                           'class' => 'Paws::IoT::ThingGroupProperties'
                                         },
               'QueryString' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ThingGroupMetadata' => {
                                         'type' => 'IoT_ThingGroupMetadata',
                                         'class' => 'Paws::IoT::ThingGroupMetadata'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingGroupResponse

=head1 ATTRIBUTES


=head2 IndexName => Str

The dynamic thing group index name.


=head2 QueryString => Str

The dynamic thing group search query string.


=head2 QueryVersion => Str

The dynamic thing group query version.


=head2 Status => Str

The dynamic thing group status.

Valid values are: C<"ACTIVE">, C<"BUILDING">, C<"REBUILDING">
=head2 ThingGroupArn => Str

The thing group ARN.


=head2 ThingGroupId => Str

The thing group ID.


=head2 ThingGroupMetadata => IoT_ThingGroupMetadata

Thing group metadata.


=head2 ThingGroupName => Str

The name of the thing group.


=head2 ThingGroupProperties => IoT_ThingGroupProperties

The thing group properties.


=head2 Version => Int

The version of the thing group.


=head2 _request_id => Str


=cut

