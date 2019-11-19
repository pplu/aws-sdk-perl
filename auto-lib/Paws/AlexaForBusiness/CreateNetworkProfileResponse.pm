# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateNetworkProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has NetworkProfileArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkProfileArn' => {
                                        'type' => 'Str'
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

Paws::AlexaForBusiness::CreateNetworkProfileResponse

=head1 ATTRIBUTES


=head2 NetworkProfileArn => Str

The ARN of the network profile associated with a device.


=head2 _request_id => Str


=cut

1;