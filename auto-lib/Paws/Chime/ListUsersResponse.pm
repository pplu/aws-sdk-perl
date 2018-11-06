
package Paws::Chime::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::Chime::User]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 Users => ArrayRef[L<Paws::Chime::User>]

List of users and user details.


=head2 _request_id => Str


=cut

