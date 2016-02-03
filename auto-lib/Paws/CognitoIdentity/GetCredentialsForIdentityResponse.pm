
package Paws::CognitoIdentity::GetCredentialsForIdentityResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::CognitoIdentity::Credentials');
  has IdentityId => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::GetCredentialsForIdentityResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::CognitoIdentity::Credentials>

Credentials for the provided identity ID.



=head2 IdentityId => Str

A unique identifier in the format REGION:GUID.




=cut

1;