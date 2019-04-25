
package Paws::Transfer::ListUsersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedUser]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you can get additional results from the C<ListUsers> call, a
C<NextToken> parameter is returned in the output. You can then pass in
a subsequent command the C<NextToken> parameter to continue listing
additional users.


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server that the users
are assigned to.


=head2 B<REQUIRED> Users => ArrayRef[L<Paws::Transfer::ListedUser>]

Returns the user accounts and their properties for the C<ServerId>
value that you specify.


=head2 _request_id => Str


=cut

1;