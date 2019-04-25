
package Paws::SecurityHub::ListInvitationsResponse;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Invitation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::SecurityHub::Invitation>]

The details of the invitations returned by the operation.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

