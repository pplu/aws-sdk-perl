
package Paws::ApiGatewayV2::GetIntegrationResponses;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has IntegrationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'integrationId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntegrationResponses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/apis/{apiId}/integrations/{integrationId}/integrationresponses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetIntegrationResponsesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetIntegrationResponses - Arguments for method GetIntegrationResponses on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntegrationResponses on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetIntegrationResponses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntegrationResponses.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetIntegrationResponsesResponse = $apigateway->GetIntegrationResponses(
      ApiId         => 'My__string',
      IntegrationId => 'My__string',
      MaxResults    => 'My__string',    # OPTIONAL
      NextToken     => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $GetIntegrationResponsesResponse->Items;
    my $NextToken = $GetIntegrationResponsesResponse->NextToken;

    # Returns a L<Paws::ApiGatewayV2::GetIntegrationResponsesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetIntegrationResponses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API identifier.



=head2 B<REQUIRED> IntegrationId => Str

The integration ID.



=head2 MaxResults => Str

The maximum number of elements to be returned for this resource.



=head2 NextToken => Str

The next page of elements from this collection. Not valid for the last
element of the collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntegrationResponses in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

