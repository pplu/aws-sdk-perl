# Generated from json/callresult_class.tt

package Paws::Config::PutOrganizationConfigRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has OrganizationConfigRuleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConfigRuleArn' => {
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

Paws::Config::PutOrganizationConfigRuleResponse

=head1 ATTRIBUTES


=head2 OrganizationConfigRuleArn => Str




=head2 _request_id => Str


=cut

1;