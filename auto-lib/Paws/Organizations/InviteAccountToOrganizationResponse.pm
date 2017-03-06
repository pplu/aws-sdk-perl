
package Paws::Organizations::InviteAccountToOrganizationResponse;
  use Moose;
  has Handshake => (is => 'ro', isa => 'Paws::Organizations::Handshake');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::InviteAccountToOrganizationResponse

=head1 ATTRIBUTES


=head2 Handshake => L<Paws::Organizations::Handshake>

A structure that contains details about the handshake that is created
to support this invitation request.


=head2 _request_id => Str


=cut

1;