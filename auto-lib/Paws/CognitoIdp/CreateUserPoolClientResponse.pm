# Generated from json/callresult_class.tt

package Paws::CognitoIdp::CreateUserPoolClientResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolClientType/;
  has UserPoolClient => (is => 'ro', isa => CognitoIdp_UserPoolClientType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UserPoolClient' => {
                                     'class' => 'Paws::CognitoIdp::UserPoolClientType',
                                     'type' => 'CognitoIdp_UserPoolClientType'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolClientResponse

=head1 ATTRIBUTES


=head2 UserPoolClient => CognitoIdp_UserPoolClientType

The user pool client that was just created.


=head2 _request_id => Str


=cut

1;