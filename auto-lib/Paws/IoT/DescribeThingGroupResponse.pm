
package Paws::IoT::DescribeThingGroupResponse;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'indexName');
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString');
  has QueryVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryVersion');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupArn');
  has ThingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupId');
  has ThingGroupMetadata => (is => 'ro', isa => 'Paws::IoT::ThingGroupMetadata', traits => ['NameInRequest'], request_name => 'thingGroupMetadata');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupName');
  has ThingGroupProperties => (is => 'ro', isa => 'Paws::IoT::ThingGroupProperties', traits => ['NameInRequest'], request_name => 'thingGroupProperties');
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 ThingGroupMetadata => L<Paws::IoT::ThingGroupMetadata>

Thing group metadata.


=head2 ThingGroupName => Str

The name of the thing group.


=head2 ThingGroupProperties => L<Paws::IoT::ThingGroupProperties>

The thing group properties.


=head2 Version => Int

The version of the thing group.


=head2 _request_id => Str


=cut

