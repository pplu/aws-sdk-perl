
package Paws::ConnectParticipant::CreateParticipantConnectionResponse;
  use Moose;
  has ConnectionCredentials => (is => 'ro', isa => 'Paws::ConnectParticipant::ConnectionCredentials');
  has Websocket => (is => 'ro', isa => 'Paws::ConnectParticipant::Websocket');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::CreateParticipantConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionCredentials => L<Paws::ConnectParticipant::ConnectionCredentials>

Creates the participant's connection credentials. The authentication
token associated with the participant's connection.


=head2 Websocket => L<Paws::ConnectParticipant::Websocket>

Creates the participant's websocket connection.


=head2 _request_id => Str


=cut

