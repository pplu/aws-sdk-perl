
package Paws::CognitoIdp::ListUsersInGroupResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserType]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsersInGroupResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 Users => ArrayRef[L<Paws::CognitoIdp::UserType>]

The users returned in the request to list users.


=head2 _request_id => Str


=cut

1;