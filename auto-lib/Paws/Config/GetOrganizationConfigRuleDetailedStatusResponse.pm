# Generated from json/callresult_class.tt

package Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_MemberAccountStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConfigRuleDetailedStatus => (is => 'ro', isa => ArrayRef[Config_MemberAccountStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConfigRuleDetailedStatus' => {
                                                           'class' => 'Paws::Config::MemberAccountStatus',
                                                           'type' => 'ArrayRef[Config_MemberAccountStatus]'
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

Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 OrganizationConfigRuleDetailedStatus => ArrayRef[Config_MemberAccountStatus]




=head2 _request_id => Str


=cut

1;