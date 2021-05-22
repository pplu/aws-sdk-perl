
package Paws::Chime::PutVoiceConnectorEmergencyCallingConfigurationResponse;
  use Moose;
  has EmergencyCallingConfiguration => (is => 'ro', isa => 'Paws::Chime::EmergencyCallingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutVoiceConnectorEmergencyCallingConfigurationResponse

=head1 ATTRIBUTES


=head2 EmergencyCallingConfiguration => L<Paws::Chime::EmergencyCallingConfiguration>

The emergency calling configuration details.


=head2 _request_id => Str


=cut

