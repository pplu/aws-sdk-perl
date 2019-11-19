# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListDeviceEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_DeviceEvent/;
  has DeviceEvents => (is => 'ro', isa => ArrayRef[AlexaForBusiness_DeviceEvent]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeviceEvents' => {
                                   'class' => 'Paws::AlexaForBusiness::DeviceEvent',
                                   'type' => 'ArrayRef[AlexaForBusiness_DeviceEvent]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListDeviceEventsResponse

=head1 ATTRIBUTES


=head2 DeviceEvents => ArrayRef[AlexaForBusiness_DeviceEvent]

The device events requested for the device ARN.


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 _request_id => Str


=cut

1;