# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::GetCredentialsForIdentityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_Credentials/;
  has Credentials => (is => 'ro', isa => CognitoIdentity_Credentials);
  has IdentityId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Credentials' => {
                                  'class' => 'Paws::CognitoIdentity::Credentials',
                                  'type' => 'CognitoIdentity_Credentials'
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

Paws::CognitoIdentity::GetCredentialsForIdentityResponse

=head1 ATTRIBUTES


=head2 Credentials => CognitoIdentity_Credentials

Credentials for the provided identity ID.


=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.


=head2 _request_id => Str


=cut

1;