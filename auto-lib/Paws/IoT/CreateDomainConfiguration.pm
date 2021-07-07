
package Paws::IoT::CreateDomainConfiguration;
  use Moose;
  has AuthorizerConfig => (is => 'ro', isa => 'Paws::IoT::AuthorizerConfig', traits => ['NameInRequest'], request_name => 'authorizerConfig');
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainConfigurationName', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has ServerCertificateArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serverCertificateArns');
  has ServiceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceType');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has ValidationCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validationCertificateArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainConfigurations/{domainConfigurationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateDomainConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDomainConfiguration - Arguments for method CreateDomainConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateDomainConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateDomainConfigurationResponse = $iot->CreateDomainConfiguration(
      DomainConfigurationName => 'MyDomainConfigurationName',
      AuthorizerConfig        => {
        AllowAuthorizerOverride => 1,    # OPTIONAL
        DefaultAuthorizerName   =>
          'MyAuthorizerName',            # min: 1, max: 128; OPTIONAL
      },    # OPTIONAL
      DomainName            => 'MyDomainName',    # OPTIONAL
      ServerCertificateArns => [
        'MyAcmCertificateArn', ...                # min: 1, max: 2048
      ],    # OPTIONAL
      ServiceType => 'DATA',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ValidationCertificateArn => 'MyAcmCertificateArn',    # OPTIONAL
    );

    # Results:
    my $DomainConfigurationArn =
      $CreateDomainConfigurationResponse->DomainConfigurationArn;
    my $DomainConfigurationName =
      $CreateDomainConfigurationResponse->DomainConfigurationName;

    # Returns a L<Paws::IoT::CreateDomainConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateDomainConfiguration>

=head1 ATTRIBUTES


=head2 AuthorizerConfig => L<Paws::IoT::AuthorizerConfig>

An object that specifies the authorization service for a domain.



=head2 B<REQUIRED> DomainConfigurationName => Str

The name of the domain configuration. This value must be unique to a
region.



=head2 DomainName => Str

The name of the domain.



=head2 ServerCertificateArns => ArrayRef[Str|Undef]

The ARNs of the certificates that AWS IoT passes to the device during
the TLS handshake. Currently you can specify only one certificate ARN.
This value is not required for AWS-managed domains.



=head2 ServiceType => Str

The type of service delivered by the endpoint.

AWS IoT Core currently supports only the C<DATA> service type.

Valid values are: C<"DATA">, C<"CREDENTIAL_PROVIDER">, C<"JOBS">

=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the domain configuration.

For URI Request parameters use format: ...key1=value1&key2=value2...

For the CLI command-line parameter use format: &&tags
"key1=value1&key2=value2..."

For the cli-input-json file use format: "tags":
"key1=value1&key2=value2..."



=head2 ValidationCertificateArn => Str

The certificate used to validate the server certificate and prove
domain name ownership. This certificate must be signed by a public
certificate authority. This value is not required for AWS-managed
domains.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

