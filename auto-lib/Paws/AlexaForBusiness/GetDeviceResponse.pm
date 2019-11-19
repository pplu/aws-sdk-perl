# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetDeviceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Device/;
  has Device => (is => 'ro', isa => AlexaForBusiness_Device);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Device' => {
                             'class' => 'Paws::AlexaForBusiness::Device',
                             'type' => 'AlexaForBusiness_Device'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetDeviceResponse

=head1 ATTRIBUTES


=head2 Device => AlexaForBusiness_Device

The details of the device requested. Required.


=head2 _request_id => Str


=cut

1;