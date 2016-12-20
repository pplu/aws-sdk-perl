
package Paws::CognitoIdp::ListGroupsResponse;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::GroupType]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::CognitoIdp::GroupType>]

The group objects for the groups.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;