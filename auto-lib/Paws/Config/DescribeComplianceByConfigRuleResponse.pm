# Generated from json/callresult_class.tt

package Paws::Config::DescribeComplianceByConfigRuleResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ComplianceByConfigRule/;
  has ComplianceByConfigRules => (is => 'ro', isa => ArrayRef[Config_ComplianceByConfigRule]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ComplianceByConfigRules' => {
                                              'class' => 'Paws::Config::ComplianceByConfigRule',
                                              'type' => 'ArrayRef[Config_ComplianceByConfigRule]'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeComplianceByConfigRuleResponse

=head1 ATTRIBUTES


=head2 ComplianceByConfigRules => ArrayRef[Config_ComplianceByConfigRule]

Indicates whether each of the specified AWS Config rules is compliant.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;