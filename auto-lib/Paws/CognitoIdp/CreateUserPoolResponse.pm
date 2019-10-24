# Generated from json/callresult_class.tt

package Paws::CognitoIdp::CreateUserPoolResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolType/;
  has UserPool => (is => 'ro', isa => CognitoIdp_UserPoolType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserPool' => {
                               'class' => 'Paws::CognitoIdp::UserPoolType',
                               'type' => 'CognitoIdp_UserPoolType'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolResponse

=head1 ATTRIBUTES


=head2 UserPool => CognitoIdp_UserPoolType

A container for the user pool details.


=head2 _request_id => Str


=cut

1;