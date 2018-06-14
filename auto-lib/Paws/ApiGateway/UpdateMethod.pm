
package Paws::ApiGateway::UpdateMethod;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMethod');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Method');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateMethod - Arguments for method UpdateMethod on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMethod on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateMethod.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMethod.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Method = $apigateway->UpdateMethod(
      HttpMethod      => 'MyString',
      ResourceId      => 'MyString',
      RestApiId       => 'MyString',
      PatchOperations => [
        {
          from  => 'MyString',
          value => 'MyString',
          path  => 'MyString',
          op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $HttpMethod          = $Method->HttpMethod;
    my $AuthorizationScopes = $Method->AuthorizationScopes;
    my $MethodIntegration   = $Method->MethodIntegration;
    my $OperationName       = $Method->OperationName;
    my $RequestValidatorId  = $Method->RequestValidatorId;
    my $AuthorizerId        = $Method->AuthorizerId;
    my $MethodResponses     = $Method->MethodResponses;
    my $RequestParameters   = $Method->RequestParameters;
    my $RequestModels       = $Method->RequestModels;
    my $AuthorizationType   = $Method->AuthorizationType;
    my $ApiKeyRequired      = $Method->ApiKeyRequired;

    # Returns a L<Paws::ApiGateway::Method> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/apigateway/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] The HTTP verb of the Method resource.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> ResourceId => Str

[Required] The Resource identifier for the Method resource.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMethod in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

