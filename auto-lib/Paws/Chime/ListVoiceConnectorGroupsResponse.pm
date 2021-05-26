
package Paws::Chime::ListVoiceConnectorGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has VoiceConnectorGroups => (is => 'ro', isa => 'ArrayRef[Paws::Chime::VoiceConnectorGroup]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListVoiceConnectorGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 VoiceConnectorGroups => ArrayRef[L<Paws::Chime::VoiceConnectorGroup>]

The details of the Amazon Chime Voice Connector groups.


=head2 _request_id => Str


=cut

