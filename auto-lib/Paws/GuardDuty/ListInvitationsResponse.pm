
package Paws::GuardDuty::ListInvitationsResponse;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Invitation]', traits => ['NameInRequest'], request_name => 'invitations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::GuardDuty::Invitation>]

A list of invitation descriptions.


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 _request_id => Str


=cut

