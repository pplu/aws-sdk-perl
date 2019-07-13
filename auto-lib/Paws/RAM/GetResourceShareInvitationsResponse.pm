
package Paws::RAM::GetResourceShareInvitationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShareInvitations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareInvitation]', traits => ['NameInRequest'], request_name => 'resourceShareInvitations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareInvitationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShareInvitations => ArrayRef[L<Paws::RAM::ResourceShareInvitation>]

Information about the invitations.


=head2 _request_id => Str


=cut

