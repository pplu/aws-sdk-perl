
package Paws::IoT::CreateThingGroupResponse;
  use Moose;
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupArn');
  has ThingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupId');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'thingGroupName');

  has _request_id => (is => 'ro', isa => 'Str');
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

