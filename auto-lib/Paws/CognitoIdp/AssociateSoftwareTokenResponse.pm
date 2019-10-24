# Generated from json/callresult_class.tt

package Paws::CognitoIdp::AssociateSoftwareTokenResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has SecretCode => (is => 'ro', isa => Str);
  has Session => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecretCode' => {
                                 'type' => 'Str'
                               },
               'Session' => {
                              'type' => 'Str'
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

Paws::CognitoIdp::AssociateSoftwareTokenResponse

=head1 ATTRIBUTES


=head2 SecretCode => Str

A unique generated shared secret code that is used in the TOTP
algorithm to generate a one time code.


=head2 Session => Str

The session which should be passed both ways in challenge-response
calls to the service. This allows authentication of the user as part of
the MFA setup process.


=head2 _request_id => Str


=cut

1;