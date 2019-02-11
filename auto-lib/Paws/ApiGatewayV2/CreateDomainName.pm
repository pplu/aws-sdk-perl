
package Paws::ApiGatewayV2::CreateDomainName;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName', required => 1);
  has DomainNameConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGatewayV2::DomainNameConfiguration]', traits => ['NameInRequest'], request_name => 'domainNameConfigurations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domainnames');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGatewayV2::CreateDomainNameResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateDomainName - Arguments for method CreateDomainName on L<Paws::ApiGatewayV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainName on the
L<AmazonApiGatewayV2|Paws::ApiGatewayV2> service. Use the attributes of this class
as arguments to method CreateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGatewayV2');
    my $CreateDomainNameResponse = $apigateway->CreateDomainName(
      DomainName               => 'MyStringWithLengthBetween1And512',
      DomainNameConfigurations => [
        {
          ApiGatewayDomainName => 'My__string',                       # OPTIONAL
          CertificateArn       => 'MyArn',                            # OPTIONAL
          CertificateName      => 'MyStringWithLengthBetween1And128', # OPTIONAL
          CertificateUploadDate => '1970-01-01T01:00:00',             # OPTIONAL
          EndpointType => 'REGIONAL',      # values: REGIONAL, EDGE; OPTIONAL
          HostedZoneId => 'My__string',    # OPTIONAL
        },
        ...
      ],                                   # OPTIONAL
    );

    # Results:
    my $ApiMappingSelectionExpression =
      $CreateDomainNameResponse->ApiMappingSelectionExpression;
    my $DomainName = $CreateDomainNameResponse->DomainName;
    my $DomainNameConfigurations =
      $CreateDomainNameResponse->DomainNameConfigurations;

    # Returns a L<Paws::ApiGatewayV2::CreateDomainNameResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The domain name.



=head2 DomainNameConfigurations => ArrayRef[L<Paws::ApiGatewayV2::DomainNameConfiguration>]

The domain name configurations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainName in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

