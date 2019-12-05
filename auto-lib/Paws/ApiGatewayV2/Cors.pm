package Paws::ApiGatewayV2::Cors;
  use Moose;
  has AllowCredentials => (is => 'ro', isa => 'Bool', request_name => 'allowCredentials', traits => ['NameInRequest']);
  has AllowHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowHeaders', traits => ['NameInRequest']);
  has AllowMethods => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowMethods', traits => ['NameInRequest']);
  has AllowOrigins => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowOrigins', traits => ['NameInRequest']);
  has ExposeHeaders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'exposeHeaders', traits => ['NameInRequest']);
  has MaxAge => (is => 'ro', isa => 'Int', request_name => 'maxAge', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::Cors

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::Cors object:

  $service_obj->Method(Att1 => { AllowCredentials => $value, ..., MaxAge => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::Cors object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowCredentials

=head1 DESCRIPTION

Represents a CORS configuration. Supported only for HTTP APIs. See
Configuring CORS
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html)
for more information.

=head1 ATTRIBUTES


=head2 AllowCredentials => Bool

  Specifies whether credentials are included in the CORS request.
Supported only for HTTP APIs.


=head2 AllowHeaders => ArrayRef[Str|Undef]

  Represents a collection of allowed headers. Supported only for HTTP
APIs.


=head2 AllowMethods => ArrayRef[Str|Undef]

  Represents a collection of allowed HTTP methods. Supported only for
HTTP APIs.


=head2 AllowOrigins => ArrayRef[Str|Undef]

  Represents a collection of allowed origins. Supported only for HTTP
APIs.


=head2 ExposeHeaders => ArrayRef[Str|Undef]

  Represents a collection of exposed headers. Supported only for HTTP
APIs.


=head2 MaxAge => Int

  The number of seconds that the browser should cache preflight request
results. Supported only for HTTP APIs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

