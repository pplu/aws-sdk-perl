
package Paws::ApiGateway::UpdateIntegrationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has HttpMethod => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StatusCode => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateIntegrationResponse');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::IntegrationResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'HttpMethod' => 1,
                    'StatusCode' => 1,
                    'RestApiId' => 1,
                    'ResourceId' => 1
                  },
  'types' => {
               'HttpMethod' => {
                                 'type' => 'Str'
                               },
               'PatchOperations' => {
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]',
                                      'class' => 'Paws::ApiGateway::PatchOperation'
                                    },
               'StatusCode' => {
                                 'type' => 'Str'
                               },
               'RestApiId' => {
                                'type' => 'Str'
                              },
               'ResourceId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'StatusCode' => 'status_code',
                    'HttpMethod' => 'http_method',
                    'ResourceId' => 'resource_id',
                    'RestApiId' => 'restapi_id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateIntegrationResponse - Arguments for method UpdateIntegrationResponse on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIntegrationResponse on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIntegrationResponse.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $IntegrationResponse = $apigateway->UpdateIntegrationResponse(
      HttpMethod      => 'MyString',
      ResourceId      => 'MyString',
      RestApiId       => 'MyString',
      StatusCode      => 'MyStatusCode',
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
    my $ContentHandling    = $IntegrationResponse->ContentHandling;
    my $ResponseParameters = $IntegrationResponse->ResponseParameters;
    my $ResponseTemplates  = $IntegrationResponse->ResponseTemplates;
    my $SelectionPattern   = $IntegrationResponse->SelectionPattern;
    my $StatusCode         = $IntegrationResponse->StatusCode;

    # Returns a L<Paws::ApiGateway::IntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateIntegrationResponse>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HttpMethod => Str

[Required] Specifies an update integration response request's HTTP
method.



=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> ResourceId => Str

[Required] Specifies an update integration response request's resource
identifier.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StatusCode => Str

[Required] Specifies an update integration response request's status
code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIntegrationResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

