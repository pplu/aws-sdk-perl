
package Paws::ApiGateway::PutMethodResponse;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has ResponseModels => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseModels');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToBoolean', traits => ['NameInRequest'], request_name => 'responseParameters');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'status_code', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMethodResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::MethodResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutMethodResponse - Arguments for method PutMethodResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMethodResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutMethodResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMethodResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $MethodResponse = $apigateway->PutMethodResponse(
      HttpMethod         => 'MyString',
      ResourceId         => 'MyString',
      RestApiId          => 'MyString',
      StatusCode         => 'MyStatusCode',
      ResponseModels     => { 'MyString' => 'MyString', },    # OPTIONAL
      ResponseParameters => { 'MyString' => 1, },             # OPTIONAL
    );

    # Results:
    my $ResponseModels     = $MethodResponse->ResponseModels;
    my $ResponseParameters = $MethodResponse->ResponseParameters;
    my $StatusCode         = $MethodResponse->StatusCode;

    # Returns a L<Paws::ApiGateway::MethodResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutMethodResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] The HTTP verb of the Method resource.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the Method resource.



=head2 ResponseModels => L<Paws::ApiGateway::MapOfStringToString>

Specifies the Model resources used for the response's content type.
Response models are represented as a key/value map, with a content type
as the key and a Model name as the value.



=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToBoolean>

A key-value map specifying required or optional response parameters
that API Gateway can send back to the caller. A key defines a method
response header name and the associated value is a Boolean flag
indicating whether the method response parameter is required or not.
The method response header names must match the pattern of
C<method.response.header.{name}>, where C<name> is a valid and unique
header name. The response parameter names defined here are available in
the integration response to be mapped from an integration response
header expressed in C<integration.response.header.{name}>, a static
value enclosed within a pair of single quotes (e.g.,
C<'application/json'>), or a JSON expression from the back-end response
payload in the form of C<integration.response.body.{JSON-expression}>,
where C<JSON-expression> is a valid JSON expression without the C<$>
prefix.)



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StatusCode => Str

[Required] The method response's status code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMethodResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

