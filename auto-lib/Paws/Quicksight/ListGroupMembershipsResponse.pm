
package Paws::Quicksight::ListGroupMembershipsResponse;
  use Moose;
  has GroupMemberList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::GroupMember]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListGroupMembershipsResponse

=head1 ATTRIBUTES


=head2 GroupMemberList => ArrayRef[L<Paws::Quicksight::GroupMember>]

The list of the members of the group.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

