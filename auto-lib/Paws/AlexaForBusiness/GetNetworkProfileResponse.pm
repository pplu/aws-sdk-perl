# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetNetworkProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_NetworkProfile/;
  has NetworkProfile => (is => 'ro', isa => AlexaForBusiness_NetworkProfile);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkProfile' => {
                                     'class' => 'Paws::AlexaForBusiness::NetworkProfile',
                                     'type' => 'AlexaForBusiness_NetworkProfile'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetNetworkProfileResponse

=head1 ATTRIBUTES


=head2 NetworkProfile => AlexaForBusiness_NetworkProfile

The network profile associated with a device.


=head2 _request_id => Str


=cut

1;