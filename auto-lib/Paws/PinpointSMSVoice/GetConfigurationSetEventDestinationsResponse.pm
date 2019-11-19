
package Paws::PinpointSMSVoice::GetConfigurationSetEventDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointSMSVoice::Types qw/PinpointSMSVoice_EventDestination/;
  has EventDestinations => (is => 'ro', isa => ArrayRef[PinpointSMSVoice_EventDestination]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventDestinations' => {
                                        'class' => 'Paws::PinpointSMSVoice::EventDestination',
                                        'type' => 'ArrayRef[PinpointSMSVoice_EventDestination]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::GetConfigurationSetEventDestinationsResponse

=head1 ATTRIBUTES


=head2 EventDestinations => ArrayRef[PinpointSMSVoice_EventDestination]




=head2 _request_id => Str


=cut

