# Generated from json/callresult_class.tt

package Paws::Config::DescribeOrganizationConfigRulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_OrganizationConfigRule/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConfigRules => (is => 'ro', isa => ArrayRef[Config_OrganizationConfigRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConfigRules' => {
                                              'class' => 'Paws::Config::OrganizationConfigRule',
                                              'type' => 'ArrayRef[Config_OrganizationConfigRule]'
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

Paws::Config::DescribeOrganizationConfigRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 OrganizationConfigRules => ArrayRef[Config_OrganizationConfigRule]




=head2 _request_id => Str


=cut

1;