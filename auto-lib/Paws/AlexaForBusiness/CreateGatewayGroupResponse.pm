# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateGatewayGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has GatewayGroupArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GatewayGroupArn' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateGatewayGroupResponse

=head1 ATTRIBUTES


=head2 GatewayGroupArn => Str

The ARN of the created gateway group.


=head2 _request_id => Str


=cut

1;