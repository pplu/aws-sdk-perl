# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListGatewayGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_GatewayGroupSummary/;
  has GatewayGroups => (is => 'ro', isa => ArrayRef[AlexaForBusiness_GatewayGroupSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayGroups' => {
                                    'class' => 'Paws::AlexaForBusiness::GatewayGroupSummary',
                                    'type' => 'ArrayRef[AlexaForBusiness_GatewayGroupSummary]'
                                  },
               'NextToken' => {
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

Paws::AlexaForBusiness::ListGatewayGroupsResponse

=head1 ATTRIBUTES


=head2 GatewayGroups => ArrayRef[AlexaForBusiness_GatewayGroupSummary]

The gateway groups in the list.


=head2 NextToken => Str

The token used to paginate though multiple pages of gateway group
summaries.


=head2 _request_id => Str


=cut

1;