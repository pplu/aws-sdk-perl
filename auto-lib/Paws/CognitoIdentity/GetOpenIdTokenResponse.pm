# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::GetOpenIdTokenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdentity::Types qw//;
  has IdentityId => (is => 'ro', isa => Str);
  has Token => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Token' => {
                            'type' => 'Str'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetOpenIdTokenResponse

=head1 ATTRIBUTES


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID. Note that the IdentityId
returned may not match the one passed on input.


=head2 Token => Str

An OpenID token, valid for 10 minutes.


=head2 _request_id => Str


=cut

1;