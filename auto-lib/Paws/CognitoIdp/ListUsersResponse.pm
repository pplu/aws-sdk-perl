
package Paws::CognitoIdp::ListUsersResponse;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::UserType]');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsersResponse

=head1 ATTRIBUTES


=head2 PaginationToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 Users => ArrayRef[L<Paws::CognitoIdp::UserType>]

The users returned in the request to list users.




=cut

1;