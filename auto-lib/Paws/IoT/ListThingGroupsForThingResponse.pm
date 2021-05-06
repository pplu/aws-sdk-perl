
package Paws::IoT::ListThingGroupsForThingResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThingGroups => (is => 'ro', isa => 'ArrayRef[Paws::IoT::GroupNameAndArn]', traits => ['NameInRequest'], request_name => 'thingGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingGroupsForThingResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 ThingGroups => ArrayRef[L<Paws::IoT::GroupNameAndArn>]

The thing groups.


=head2 _request_id => Str


=cut

