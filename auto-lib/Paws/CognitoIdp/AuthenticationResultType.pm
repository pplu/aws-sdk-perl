package Paws::CognitoIdp::AuthenticationResultType;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str');
  has ExpiresIn => (is => 'ro', isa => 'Int');
  has IdToken => (is => 'ro', isa => 'Str');
  has NewDeviceMetadata => (is => 'ro', isa => 'Paws::CognitoIdp::NewDeviceMetadataType');
  has RefreshToken => (is => 'ro', isa => 'Str');
  has TokenType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AuthenticationResultType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AuthenticationResultType object:

  $service_obj->Method(Att1 => { AccessToken => $value, ..., TokenType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AuthenticationResultType object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessToken

=head1 DESCRIPTION

The authentication result.

=head1 ATTRIBUTES


=head2 AccessToken => Str

  The access token.


=head2 ExpiresIn => Int

  The expiration period of the authentication result in seconds.


=head2 IdToken => Str

  The ID token.


=head2 NewDeviceMetadata => L<Paws::CognitoIdp::NewDeviceMetadataType>

  The new device metadata from an authentication result.


=head2 RefreshToken => Str

  The refresh token.


=head2 TokenType => Str

  The token type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

