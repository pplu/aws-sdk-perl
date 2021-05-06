
package Paws::IoT::CreateDynamicThingGroupResponse;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupArn');
  has ThingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupId');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupName');

  has _request_id => (is => 'ro', isa => 'Str');
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

