package Paws::ApiGatewayV2::JWTConfiguration;
  use Moose;
  has Audience => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'audience', traits => ['NameInRequest']);
  has Issuer => (is => 'ro', isa => 'Str', request_name => 'issuer', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::JWTConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::JWTConfiguration object:

  $service_obj->Method(Att1 => { Audience => $value, ..., Issuer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::JWTConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Audience

=head1 DESCRIPTION

Represents the configuration of a JWT authorizer. Required for the JWT
authorizer type. Supported only for HTTP APIs.

=head1 ATTRIBUTES


=head2 Audience => ArrayRef[Str|Undef]

  A list of the intended recipients of the JWT. A valid JWT must provide
an aud that matches at least one entry in this list. See RFC 7519
(https://tools.ietf.org/html/rfc7519#section-4.1.3). Supported only for
HTTP APIs.


=head2 Issuer => Str

  The base domain of the identity provider that issues JSON Web Tokens.
For example, an Amazon Cognito user pool has the following format:
https://cognito-idp.{region}.amazonaws.com/{userPoolId} . Required for
the JWT authorizer type. Supported only for HTTP APIs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

