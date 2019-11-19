# Generated from callresult_class.tt

package Paws::IAM::CreatePolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_Policy/;
  has Policy => (is => 'ro', isa => IAM_Policy);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Policy' => {
                             'class' => 'Paws::IAM::Policy',
                             'type' => 'IAM_Policy'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreatePolicyResponse

=head1 ATTRIBUTES


=head2 Policy => IAM_Policy

A structure containing details about the new policy.


=head2 _request_id => Str


=cut

