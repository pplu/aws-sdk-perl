
package Paws::ApiGatewayV2::GetApiMapping;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'apiId', required => 1);
  has ApiMappingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiMappingId', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApiMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames/{domainName}/apimappings/{apiMappingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetApiMappingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApiMapping - Arguments for method GetApiMapping on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApiMapping on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetApiMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApiMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetApiMappingResponse = $apigateway->GetApiMapping(
      ApiId        => 'My__string',
      ApiMappingId => 'My__string',
      DomainName   => 'My__string',

    );

    # Results:
    my $ApiId         = $GetApiMappingResponse->ApiId;
    my $ApiMappingId  = $GetApiMappingResponse->ApiMappingId;
    my $ApiMappingKey = $GetApiMappingResponse->ApiMappingKey;
    my $Stage         = $GetApiMappingResponse->Stage;

    # Returns a L<Paws::ApiGatewayV2::GetApiMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetApiMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The identifier of the API.



=head2 B<REQUIRED> ApiMappingId => Str

The API mapping identifier.



=head2 B<REQUIRED> DomainName => Str

The domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApiMapping in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

