
package Paws::WorkMail::ListGroupMembersResponse;
  use Moose;
  has Members => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::Member]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListGroupMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[L<Paws::WorkMail::Member>]

The members associated to the group.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.


=head2 _request_id => Str


=cut

1;