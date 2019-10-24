# Generated from json/callresult_class.tt

package Paws::Config::DescribeConfigRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConfigRule/;
  has ConfigRules => (is => 'ro', isa => ArrayRef[Config_ConfigRule]);
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
               'ConfigRules' => {
                                  'class' => 'Paws::Config::ConfigRule',
                                  'type' => 'ArrayRef[Config_ConfigRule]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRulesResponse

=head1 ATTRIBUTES


=head2 ConfigRules => ArrayRef[Config_ConfigRule]

The details about your AWS Config rules.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;