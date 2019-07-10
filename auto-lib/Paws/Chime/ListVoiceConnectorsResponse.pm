
package Paws::Chime::ListVoiceConnectorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceConnectors => (is => 'ro', isa => 'ArrayRef[Paws::Chime::VoiceConnector]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListVoiceConnectorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 VoiceConnectors => ArrayRef[L<Paws::Chime::VoiceConnector>]

The details of the Amazon Chime Voice Connectors.


=head2 _request_id => Str


=cut

