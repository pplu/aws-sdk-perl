
package Paws::ApiGatewayV2::UpdateApiMapping;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId', required => 1);
  has ApiMappingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiMappingId', required => 1);
  has ApiMappingKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMappingKey');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApiMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames/{domainName}/apimappings/{apiMappingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::UpdateApiMappingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateApiMapping - Arguments for method UpdateApiMapping on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiMapping on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method UpdateApiMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $UpdateApiMappingResponse = $apigateway->UpdateApiMapping(
      ApiId         => 'MyId',
      ApiMappingId  => 'My__string',
      DomainName    => 'My__string',
      ApiMappingKey => 'MySelectionKey',                      # OPTIONAL
      Stage         => 'MyStringWithLengthBetween1And128',    # OPTIONAL
    );

    # Results:
    my $ApiId         = $UpdateApiMappingResponse->ApiId;
    my $ApiMappingId  = $UpdateApiMappingResponse->ApiMappingId;
    my $ApiMappingKey = $UpdateApiMappingResponse->ApiMappingKey;
    my $Stage         = $UpdateApiMappingResponse->Stage;

    # Returns a L<Paws::ApiGatewayV2::UpdateApiMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateApiMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> ApiMappingId => Str

The API mapping identifier.



=head2 ApiMappingKey => Str

The API mapping key.



=head2 B<REQUIRED> DomainName => Str

The domain name.



=head2 Stage => Str

The API stage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiMapping in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

