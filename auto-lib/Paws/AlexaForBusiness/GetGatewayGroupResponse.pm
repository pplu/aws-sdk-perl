# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::GetGatewayGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_GatewayGroup/;
  has GatewayGroup => (is => 'ro', isa => AlexaForBusiness_GatewayGroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GatewayGroup' => {
                                   'class' => 'Paws::AlexaForBusiness::GatewayGroup',
                                   'type' => 'AlexaForBusiness_GatewayGroup'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetGatewayGroupResponse

=head1 ATTRIBUTES


=head2 GatewayGroup => AlexaForBusiness_GatewayGroup




=head2 _request_id => Str


=cut

1;