
package Paws::AmplifyBackend::CreateTokenResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId');
  has ChallengeCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'challengeCode');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId');
  has Ttl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ttl');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateTokenResponse

=head1 ATTRIBUTES


=head2 AppId => Str

The app ID.


=head2 ChallengeCode => Str

One-time challenge code for authenticating into the Amplify Admin UI.


=head2 SessionId => Str

A unique ID provided when creating a new challenge token.


=head2 Ttl => Str

The expiry time for the one-time generated token code.


=head2 _request_id => Str


=cut

