# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AdminCreateUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserType/;
  has User => (is => 'ro', isa => CognitoIdp_UserType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'User' => {
                           'type' => 'CognitoIdp_UserType',
                           'class' => 'Paws::CognitoIdp::UserType'
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

Paws::CognitoIdp::AdminCreateUserResponse

=head1 ATTRIBUTES


=head2 User => CognitoIdp_UserType

The newly created user.


=head2 _request_id => Str


=cut

1;