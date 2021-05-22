
package Paws::Macie2::ListInvitationsResponse;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::Invitation]', traits => ['NameInRequest'], request_name => 'invitations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::Macie2::Invitation>]

An array of objects, one for each invitation that was received by the
account.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

