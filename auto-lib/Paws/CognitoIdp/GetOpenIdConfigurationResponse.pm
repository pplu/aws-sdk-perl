
package Paws::CognitoIdp::GetOpenIdConfigurationResponse;
  use Moose;
  has Authorization_endpoint => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'authorization_endpoint' );
  has Id_token_signing_alg_values_supported => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'id_token_signing_alg_values_supported' );
  has Issuer => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'issuer' );
  has Jwks_uri => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'jwks_uri' );
  has Response_types_supported => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'response_types_supported' );
  has Subject_types_supported => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'subject_types_supported' );


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetOpenIdConfigurationResponse

=head1 ATTRIBUTES


=head2 Authorization_endpoint => Str

The authorization endpoint returned by the server response to get the
Open ID configuration information.



=head2 Id_token_signing_alg_values_supported => ArrayRef[Str]

The token-signing algorithm values supported returned by the server
response to get the Open ID configuration information.



=head2 Issuer => Str

The issuer of the Open ID configuration response.



=head2 Jwks_uri => Str

The URI of the JSON Web keys in the server response to get Open ID
configuration information.



=head2 Response_types_supported => ArrayRef[Str]

The response types supported returned by the server response to get the
Open ID configuration information.



=head2 Subject_types_supported => ArrayRef[Str]

The subject types supported returned by the server response to get the
Open ID configuration information.




=cut

1;