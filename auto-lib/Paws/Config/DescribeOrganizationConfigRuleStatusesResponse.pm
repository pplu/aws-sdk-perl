# Generated from json/callresult_class.tt

package Paws::Config::DescribeOrganizationConfigRuleStatusesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_OrganizationConfigRuleStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConfigRuleStatuses => (is => 'ro', isa => ArrayRef[Config_OrganizationConfigRuleStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConfigRuleStatuses' => {
                                                     'class' => 'Paws::Config::OrganizationConfigRuleStatus',
                                                     'type' => 'ArrayRef[Config_OrganizationConfigRuleStatus]'
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

Paws::Config::DescribeOrganizationConfigRuleStatusesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 OrganizationConfigRuleStatuses => ArrayRef[Config_OrganizationConfigRuleStatus]




=head2 _request_id => Str


=cut

1;