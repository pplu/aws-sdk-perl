
package Paws::ApiGatewayV2::GetApiMappings;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApiMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames/{domainName}/apimappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetApiMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetApiMappings - Arguments for method GetApiMappings on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApiMappings on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetApiMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApiMappings.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetApiMappingsResponse = $apigateway->GetApiMappings(
      DomainName => 'My__string',
      MaxResults => 'My__string',    # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ApiId         = $GetApiMappingsResponse->ApiId;
    my $ApiMappingId  = $GetApiMappingsResponse->ApiMappingId;
    my $ApiMappingKey = $GetApiMappingsResponse->ApiMappingKey;
    my $Stage         = $GetApiMappingsResponse->Stage;

    # Returns a L<Paws::ApiGatewayV2::GetApiMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetApiMappings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain name.



=head2 MaxResults => Str

The maximum number of elements to be returned for this resource.



=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApiMappings in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

