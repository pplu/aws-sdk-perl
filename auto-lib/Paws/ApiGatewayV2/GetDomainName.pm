
package Paws::ApiGatewayV2::GetDomainName;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames/{domainName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::GetDomainNameResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetDomainName - Arguments for method GetDomainName on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainName on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method GetDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $GetDomainNameResponse = $apigateway->GetDomainName(
      DomainName => 'My__string',

    );

    # Results:
    my $ApiMappingSelectionExpression =
      $GetDomainNameResponse->ApiMappingSelectionExpression;
    my $DomainName = $GetDomainNameResponse->DomainName;
    my $DomainNameConfigurations =
      $GetDomainNameResponse->DomainNameConfigurations;

    # Returns a L<Paws::ApiGatewayV2::GetDomainNameResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainName in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

