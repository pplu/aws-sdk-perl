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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrganizationConfigRules' => {
                                              'type' => 'ArrayRef[Config_OrganizationConfigRule]',
                                              'class' => 'Paws::Config::OrganizationConfigRule'
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

Paws::Config::DescribeOrganizationConfigRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConfigRules => ArrayRef[Config_OrganizationConfigRule]

Returns a list of C<OrganizationConfigRule> objects.


=head2 _request_id => Str


=cut

1;