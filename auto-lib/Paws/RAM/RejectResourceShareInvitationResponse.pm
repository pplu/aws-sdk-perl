
package Paws::RAM::RejectResourceShareInvitationResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShareInvitation => (is => 'ro', isa => 'Paws::RAM::ResourceShareInvitation', traits => ['NameInRequest'], request_name => 'resourceShareInvitation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::RejectResourceShareInvitationResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShareInvitation => L<Paws::RAM::ResourceShareInvitation>

Information about the invitation.


=head2 _request_id => Str


=cut

