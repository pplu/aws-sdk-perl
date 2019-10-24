
package Paws::ApiGateway::PutIntegrationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString/;
  has ContentHandling => (is => 'ro', isa => Str, predicate => 1);
  has HttpMethod => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResponseParameters => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);
  has ResponseTemplates => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SelectionPattern => (is => 'ro', isa => Str, predicate => 1);
  has StatusCode => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutIntegrationResponse');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::IntegrationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestApiId' => {
                                'type' => 'Str'
                              },
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'HttpMethod' => {
                                 'type' => 'Str'
                               },
               'ContentHandling' => {
                                      'type' => 'Str'
                                    },
               'ResponseTemplates' => {
                                        'class' => 'Paws::ApiGateway::MapOfStringToString',
                                        'type' => 'ApiGateway_MapOfStringToString'
                                      },
               'ResponseParameters' => {
                                         'class' => 'Paws::ApiGateway::MapOfStringToString',
                                         'type' => 'ApiGateway_MapOfStringToString'
                                       },
               'StatusCode' => {
                                 'type' => 'Str'
                               },
               'SelectionPattern' => {
                                       'type' => 'Str'
                                     }
             },
  'ParamInURI' => {
                    'StatusCode' => 'status_code',
                    'RestApiId' => 'restapi_id',
                    'ResourceId' => 'resource_id',
                    'HttpMethod' => 'http_method'
                  },
  'NameInRequest' => {
                       'SelectionPattern' => 'selectionPattern',
                       'ContentHandling' => 'contentHandling',
                       'ResponseTemplates' => 'responseTemplates',
                       'ResponseParameters' => 'responseParameters'
                     },
  'IsRequired' => {
                    'StatusCode' => 1,
                    'RestApiId' => 1,
                    'ResourceId' => 1,
                    'HttpMethod' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegrationResponse - Arguments for method PutIntegrationResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegrationResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method PutIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegrationResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $IntegrationResponse = $apigateway->PutIntegrationResponse(
      HttpMethod         => 'MyString',
      ResourceId         => 'MyString',
      RestApiId          => 'MyString',
      StatusCode         => 'MyStatusCode',
      ContentHandling    => 'CONVERT_TO_BINARY',              # OPTIONAL
      ResponseParameters => { 'MyString' => 'MyString', },    # OPTIONAL
      ResponseTemplates  => { 'MyString' => 'MyString', },    # OPTIONAL
      SelectionPattern   => 'MyString',                       # OPTIONAL
    );

    # Results:
    my $ContentHandling    = $IntegrationResponse->ContentHandling;
    my $ResponseParameters = $IntegrationResponse->ResponseParameters;
    my $ResponseTemplates  = $IntegrationResponse->ResponseTemplates;
    my $SelectionPattern   = $IntegrationResponse->SelectionPattern;
    my $StatusCode         = $IntegrationResponse->StatusCode;

    # Returns a L<Paws::ApiGateway::IntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/PutIntegrationResponse>

=head1 ATTRIBUTES


=head2 ContentHandling => Str

Specifies how to handle response payload content type conversions.
Supported values are C<CONVERT_TO_BINARY> and C<CONVERT_TO_TEXT>, with
the following behaviors:

=over

=item *

C<CONVERT_TO_BINARY>: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

=item *

C<CONVERT_TO_TEXT>: Converts a response payload from a binary blob to a
Base64-encoded string.

=back

If this property is not defined, the response payload will be passed
through from the integration response to the method response without
modification.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">

=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies a put integration response request's HTTP method.



=head2 B<REQUIRED> ResourceId => Str

[Required] Specifies a put integration response request's resource
identifier.



=head2 ResponseParameters => ApiGateway_MapOfStringToString

A key-value map specifying response parameters that are passed to the
method response from the back end. The key is a method response header
parameter name and the mapped value is an integration response header
value, a static value enclosed within a pair of single quotes, or a
JSON expression from the integration response body. The mapping key
must match the pattern of C<method.response.header.{name}>, where
C<name> is a valid and unique header name. The mapped non-static value
must match the pattern of C<integration.response.header.{name}> or
C<integration.response.body.{JSON-expression}>, where C<name> must be a
valid and unique response header name and C<JSON-expression> a valid
JSON expression without the C<$> prefix.



=head2 ResponseTemplates => ApiGateway_MapOfStringToString

Specifies a put integration response's templates.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 SelectionPattern => Str

Specifies the selection pattern of a put integration response.



=head2 B<REQUIRED> StatusCode => Str

[Required] Specifies the status code that is used to map the
integration response to an existing MethodResponse.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegrationResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

