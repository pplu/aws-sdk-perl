
package Paws::ApiGateway::UpdateIntegration;
  use Moose;
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'http_method', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource_id', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Integration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateIntegration - Arguments for method UpdateIntegration on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegration on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegration.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Integration = $apigateway->UpdateIntegration(
      HttpMethod      => 'MyString',
      ResourceId      => 'MyString',
      RestApiId       => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $CacheKeyParameters   = $Integration->CacheKeyParameters;
    my $CacheNamespace       = $Integration->CacheNamespace;
    my $ConnectionId         = $Integration->ConnectionId;
    my $ConnectionType       = $Integration->ConnectionType;
    my $ContentHandling      = $Integration->ContentHandling;
    my $Credentials          = $Integration->Credentials;
    my $HttpMethod           = $Integration->HttpMethod;
    my $IntegrationResponses = $Integration->IntegrationResponses;
    my $PassthroughBehavior  = $Integration->PassthroughBehavior;
    my $RequestParameters    = $Integration->RequestParameters;
    my $RequestTemplates     = $Integration->RequestTemplates;
    my $TimeoutInMillis      = $Integration->TimeoutInMillis;
    my $Type                 = $Integration->Type;
    my $Uri                  = $Integration->Uri;

    # Returns a L<Paws::ApiGateway::Integration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] Represents an update integration request's HTTP method.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> ResourceId => Str

[Required] Represents an update integration request's resource
identifier.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntegration in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

