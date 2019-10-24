# Generated from callresult_class.tt

package Paws::IAM::GetAccountPasswordPolicyResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_PasswordPolicy/;
  has PasswordPolicy => (is => 'ro', isa => IAM_PasswordPolicy, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PasswordPolicy' => {
                                     'class' => 'Paws::IAM::PasswordPolicy',
                                     'type' => 'IAM_PasswordPolicy'
                                   }
             },
  'IsRequired' => {
                    'PasswordPolicy' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetAccountPasswordPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PasswordPolicy => IAM_PasswordPolicy

A structure that contains details about the account's password policy.


=head2 _request_id => Str


=cut

