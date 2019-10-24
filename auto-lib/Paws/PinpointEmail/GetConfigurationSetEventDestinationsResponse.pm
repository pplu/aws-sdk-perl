
package Paws::PinpointEmail::GetConfigurationSetEventDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_EventDestination/;
  has EventDestinations => (is => 'ro', isa => ArrayRef[PinpointEmail_EventDestination]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventDestinations' => {
                                        'class' => 'Paws::PinpointEmail::EventDestination',
                                        'type' => 'ArrayRef[PinpointEmail_EventDestination]'
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

Paws::PinpointEmail::GetConfigurationSetEventDestinationsResponse

=head1 ATTRIBUTES


=head2 EventDestinations => ArrayRef[PinpointEmail_EventDestination]

An array that includes all of the events destinations that have been
configured for the configuration set.


=head2 _request_id => Str


=cut

