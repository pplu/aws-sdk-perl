# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse;
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

Paws::CognitoIdentity::GetOpenIdTokenForDeveloperIdentityResponse

=head1 ATTRIBUTES


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.


=head2 Token => Str

An OpenID token.


=head2 _request_id => Str


=cut

1;