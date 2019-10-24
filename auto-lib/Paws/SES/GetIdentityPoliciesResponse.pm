# Generated from callresult_class.tt

package Paws::SES::GetIdentityPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SES::Types qw/SES_PolicyMap/;
  has Policies => (is => 'ro', isa => SES_PolicyMap, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policies' => {
                               'class' => 'Paws::SES::PolicyMap',
                               'type' => 'SES_PolicyMap'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Policies' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetIdentityPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policies => SES_PolicyMap

A map of policy names to policies.


=head2 _request_id => Str


=cut

