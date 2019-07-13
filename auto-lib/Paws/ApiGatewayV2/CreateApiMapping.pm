
package Paws::ApiGatewayV2::CreateApiMapping;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiId', required => 1);
  has ApiMappingKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMappingKey');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApiMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames/{domainName}/apimappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateApiMappingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateApiMapping - Arguments for method CreateApiMapping on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApiMapping on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateApiMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApiMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateApiMappingResponse = $apigateway->CreateApiMapping(
      ApiId         => 'MyId',
      DomainName    => 'My__string',
      Stage         => 'MyStringWithLengthBetween1And128',
      ApiMappingKey => 'MySelectionKey',                     # OPTIONAL
    );

    # Results:
    my $ApiId         = $CreateApiMappingResponse->ApiId;
    my $ApiMappingId  = $CreateApiMappingResponse->ApiMappingId;
    my $ApiMappingKey = $CreateApiMappingResponse->ApiMappingKey;
    my $Stage         = $CreateApiMappingResponse->Stage;

    # Returns a L<Paws::ApiGatewayV2::CreateApiMappingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateApiMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 ApiMappingKey => Str





=head2 B<REQUIRED> DomainName => Str

The domain name.



=head2 B<REQUIRED> Stage => Str

The API stage.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApiMapping in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

