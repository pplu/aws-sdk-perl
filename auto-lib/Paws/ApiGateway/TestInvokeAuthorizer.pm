
package Paws::ApiGateway::TestInvokeAuthorizer;
  use Moose;
  has AdditionalContext => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'additionalContext');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'authorizer_id', required => 1);
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has Headers => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'headers');
  has MultiValueHeaders => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToList', traits => ['NameInRequest'], request_name => 'multiValueHeaders');
  has PathWithQueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pathWithQueryString');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has StageVariables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'stageVariables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestInvokeAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/authorizers/{authorizer_id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::TestInvokeAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::TestInvokeAuthorizer - Arguments for method TestInvokeAuthorizer on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestInvokeAuthorizer on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method TestInvokeAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestInvokeAuthorizer.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $TestInvokeAuthorizerResponse = $apigateway->TestInvokeAuthorizer(
      AuthorizerId        => 'MyString',
      RestApiId           => 'MyString',
      AdditionalContext   => { 'MyString' => 'MyString', },           # OPTIONAL
      Body                => 'MyString',                              # OPTIONAL
      Headers             => { 'MyString' => 'MyString', },           # OPTIONAL
      MultiValueHeaders   => { 'MyString' => [ 'MyString', ... ], },  # OPTIONAL
      PathWithQueryString => 'MyString',                              # OPTIONAL
      StageVariables      => { 'MyString' => 'MyString', },           # OPTIONAL
    );

    # Results:
    my $Authorization = $TestInvokeAuthorizerResponse->Authorization;
    my $Claims        = $TestInvokeAuthorizerResponse->Claims;
    my $ClientStatus  = $TestInvokeAuthorizerResponse->ClientStatus;
    my $Latency       = $TestInvokeAuthorizerResponse->Latency;
    my $Log           = $TestInvokeAuthorizerResponse->Log;
    my $Policy        = $TestInvokeAuthorizerResponse->Policy;
    my $PrincipalId   = $TestInvokeAuthorizerResponse->PrincipalId;

    # Returns a L<Paws::ApiGateway::TestInvokeAuthorizerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/TestInvokeAuthorizer>

=head1 ATTRIBUTES


=head2 AdditionalContext => L<Paws::ApiGateway::MapOfStringToString>

[Optional] A key-value map of additional context variables.



=head2 B<REQUIRED> AuthorizerId => Str

[Required] Specifies a test invoke authorizer request's Authorizer ID.



=head2 Body => Str

[Optional] The simulated request body of an incoming invocation
request.



=head2 Headers => L<Paws::ApiGateway::MapOfStringToString>

[Required] A key-value map of headers to simulate an incoming
invocation request. This is where the incoming authorization token, or
identity source, should be specified.



=head2 MultiValueHeaders => L<Paws::ApiGateway::MapOfStringToList>

[Optional] The headers as a map from string to list of values to
simulate an incoming invocation request. This is where the incoming
authorization token, or identity source, may be specified.



=head2 PathWithQueryString => Str

[Optional] The URI path, including query string, of the simulated
invocation request. Use this to specify path parameters and query
string parameters.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 StageVariables => L<Paws::ApiGateway::MapOfStringToString>

A key-value map of stage variables to simulate an invocation on a
deployed Stage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestInvokeAuthorizer in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

