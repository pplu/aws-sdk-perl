# Generated from json/callresult_class.tt

package Paws::CognitoIdp::DescribeRiskConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_RiskConfigurationType/;
  has RiskConfiguration => (is => 'ro', isa => CognitoIdp_RiskConfigurationType, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RiskConfiguration' => {
                                        'class' => 'Paws::CognitoIdp::RiskConfigurationType',
                                        'type' => 'CognitoIdp_RiskConfigurationType'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'RiskConfiguration' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeRiskConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RiskConfiguration => CognitoIdp_RiskConfigurationType

The risk configuration.


=head2 _request_id => Str


=cut

1;