# Generated from json/callresult_class.tt

package Paws::WAF::GetPermissionPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw//;
  has Policy => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetPermissionPolicyResponse

=head1 ATTRIBUTES


=head2 Policy => Str

The IAM policy attached to the specified RuleGroup.


=head2 _request_id => Str


=cut

1;