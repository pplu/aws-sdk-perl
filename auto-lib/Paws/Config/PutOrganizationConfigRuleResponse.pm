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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrganizationConfigRuleArn' => {
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

The Amazon Resource Name (ARN) of an organization config rule.


=head2 _request_id => Str


=cut

1;