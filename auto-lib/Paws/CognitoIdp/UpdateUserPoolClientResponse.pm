# Generated from json/callresult_class.tt

package Paws::CognitoIdp::UpdateUserPoolClientResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolClientType/;
  has UserPoolClient => (is => 'ro', isa => CognitoIdp_UserPoolClientType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserPoolClient' => {
                                     'type' => 'CognitoIdp_UserPoolClientType',
                                     'class' => 'Paws::CognitoIdp::UserPoolClientType'
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

Paws::CognitoIdp::UpdateUserPoolClientResponse

=head1 ATTRIBUTES


=head2 UserPoolClient => CognitoIdp_UserPoolClientType

The user pool client value from the response from the server when an
update user pool client request is made.


=head2 _request_id => Str


=cut

1;