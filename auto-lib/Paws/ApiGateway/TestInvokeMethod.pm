
package Paws::ApiGateway::TestInvokeMethod;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString ApiGateway_MapOfStringToList/;
  has Body => (is => 'ro', isa => Str, predicate => 1);
  has ClientCertificateId => (is => 'ro', isa => Str, predicate => 1);
  has Headers => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);
  has HttpMethod => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MultiValueHeaders => (is => 'ro', isa => ApiGateway_MapOfStringToList, predicate => 1);
  has PathWithQueryString => (is => 'ro', isa => Str, predicate => 1);
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StageVariables => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TestInvokeMethod');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::TestInvokeMethodResponse');

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
               'PathWithQueryString' => {
                                          'type' => 'Str'
                                        },
               'Headers' => {
                              'class' => 'Paws::ApiGateway::MapOfStringToString',
                              'type' => 'ApiGateway_MapOfStringToString'
                            },
               'StageVariables' => {
                                     'class' => 'Paws::ApiGateway::MapOfStringToString',
                                     'type' => 'ApiGateway_MapOfStringToString'
                                   },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               'Body' => {
                           'type' => 'Str'
                         },
               'MultiValueHeaders' => {
                                        'class' => 'Paws::ApiGateway::MapOfStringToList',
                                        'type' => 'ApiGateway_MapOfStringToList'
                                      }
             },
  'ParamInURI' => {
                    'RestApiId' => 'restapi_id',
                    'ResourceId' => 'resource_id',
                    'HttpMethod' => 'http_method'
                  },
  'NameInRequest' => {
                       'PathWithQueryString' => 'pathWithQueryString',
                       'ClientCertificateId' => 'clientCertificateId',
                       'Headers' => 'headers',
                       'StageVariables' => 'stageVariables',
                       'MultiValueHeaders' => 'multiValueHeaders',
                       'Body' => 'body'
                     },
  'IsRequired' => {
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

Paws::ApiGateway::TestInvokeMethod - Arguments for method TestInvokeMethod on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestInvokeMethod on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method TestInvokeMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestInvokeMethod.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $TestInvokeMethodResponse = $apigateway->TestInvokeMethod(
      HttpMethod          => 'MyString',
      ResourceId          => 'MyString',
      RestApiId           => 'MyString',
      Body                => 'MyString',                              # OPTIONAL
      ClientCertificateId => 'MyString',                              # OPTIONAL
      Headers             => { 'MyString' => 'MyString', },           # OPTIONAL
      MultiValueHeaders   => { 'MyString' => [ 'MyString', ... ], },  # OPTIONAL
      PathWithQueryString => 'MyString',                              # OPTIONAL
      StageVariables      => { 'MyString' => 'MyString', },           # OPTIONAL
    );

    # Results:
    my $Body              = $TestInvokeMethodResponse->Body;
    my $Headers           = $TestInvokeMethodResponse->Headers;
    my $Latency           = $TestInvokeMethodResponse->Latency;
    my $Log               = $TestInvokeMethodResponse->Log;
    my $MultiValueHeaders = $TestInvokeMethodResponse->MultiValueHeaders;
    my $Status            = $TestInvokeMethodResponse->Status;

    # Returns a L<Paws::ApiGateway::TestInvokeMethodResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/TestInvokeMethod>

=head1 ATTRIBUTES


=head2 Body => Str

The simulated request body of an incoming invocation request.



=head2 ClientCertificateId => Str

A ClientCertificate identifier to use in the test invocation. API
Gateway will use the certificate when making the HTTPS request to the
defined back-end endpoint.



=head2 Headers => ApiGateway_MapOfStringToString

A key-value map of headers to simulate an incoming invocation request.



=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies a test invoke method request's HTTP method.



=head2 MultiValueHeaders => ApiGateway_MapOfStringToList

The headers as a map from string to list of values to simulate an
incoming invocation request.



=head2 PathWithQueryString => Str

The URI path, including query string, of the simulated invocation
request. Use this to specify path parameters and query string
parameters.



=head2 B<REQUIRED> ResourceId => Str

[Required] Specifies a test invoke method request's resource ID.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 StageVariables => ApiGateway_MapOfStringToString

A key-value map of stage variables to simulate an invocation on a
deployed Stage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestInvokeMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

