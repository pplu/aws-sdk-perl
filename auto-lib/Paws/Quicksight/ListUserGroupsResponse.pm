
package Paws::Quicksight::ListUserGroupsResponse;
  use Moose;
  has GroupList => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Group]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListUserGroupsResponse

=head1 ATTRIBUTES


=head2 GroupList => ArrayRef[L<Paws::Quicksight::Group>]

The list of groups the user is a member of.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

