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
               'NextToken' => {
                                'type' => 'Str'
                              },
               'OrganizationConfigRuleStatuses' => {
                                                     'type' => 'ArrayRef[Config_OrganizationConfigRuleStatus]',
                                                     'class' => 'Paws::Config::OrganizationConfigRuleStatus'
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

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConfigRuleStatuses => ArrayRef[Config_OrganizationConfigRuleStatus]

A list of C<OrganizationConfigRuleStatus> objects.


=head2 _request_id => Str


=cut

1;