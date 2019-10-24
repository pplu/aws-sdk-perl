# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetGatewayResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Gateway/;
  has Gateway => (is => 'ro', isa => AlexaForBusiness_Gateway);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Gateway' => {
                              'class' => 'Paws::AlexaForBusiness::Gateway',
                              'type' => 'AlexaForBusiness_Gateway'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetGatewayResponse

=head1 ATTRIBUTES


=head2 Gateway => AlexaForBusiness_Gateway

The details of the gateway.


=head2 _request_id => Str


=cut

1;