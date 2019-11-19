
package Paws::SESv2::GetConfigurationSetEventDestinationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_EventDestination/;
  has EventDestinations => (is => 'ro', isa => ArrayRef[SESv2_EventDestination]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventDestinations' => {
                                        'type' => 'ArrayRef[SESv2_EventDestination]',
                                        'class' => 'Paws::SESv2::EventDestination'
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

Paws::SESv2::GetConfigurationSetEventDestinationsResponse

=head1 ATTRIBUTES


=head2 EventDestinations => ArrayRef[SESv2_EventDestination]

An array that includes all of the events destinations that have been
configured for the configuration set.


=head2 _request_id => Str


=cut

