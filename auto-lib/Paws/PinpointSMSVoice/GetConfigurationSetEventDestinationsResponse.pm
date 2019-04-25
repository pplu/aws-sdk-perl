
package Paws::PinpointSMSVoice::GetConfigurationSetEventDestinationsResponse;
  use Moose;
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoice::EventDestination]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::GetConfigurationSetEventDestinationsResponse

=head1 ATTRIBUTES


=head2 EventDestinations => ArrayRef[L<Paws::PinpointSMSVoice::EventDestination>]




=head2 _request_id => Str


=cut

