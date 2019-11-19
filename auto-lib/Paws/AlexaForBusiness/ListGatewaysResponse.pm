# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListGatewaysResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_GatewaySummary/;
  has Gateways => (is => 'ro', isa => ArrayRef[AlexaForBusiness_GatewaySummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Gateways' => {
                               'type' => 'ArrayRef[AlexaForBusiness_GatewaySummary]',
                               'class' => 'Paws::AlexaForBusiness::GatewaySummary'
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

Paws::AlexaForBusiness::ListGatewaysResponse

=head1 ATTRIBUTES


=head2 Gateways => ArrayRef[AlexaForBusiness_GatewaySummary]

The gateways in the list.


=head2 NextToken => Str

The token used to paginate though multiple pages of gateway summaries.


=head2 _request_id => Str


=cut

1;