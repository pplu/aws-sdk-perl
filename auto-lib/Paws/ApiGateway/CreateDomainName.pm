
package Paws::ApiGateway::CreateDomainName;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString ApiGateway_EndpointConfiguration/;
  has CertificateArn => (is => 'ro', isa => Str, predicate => 1);
  has CertificateBody => (is => 'ro', isa => Str, predicate => 1);
  has CertificateChain => (is => 'ro', isa => Str, predicate => 1);
  has CertificateName => (is => 'ro', isa => Str, predicate => 1);
  has CertificatePrivateKey => (is => 'ro', isa => Str, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EndpointConfiguration => (is => 'ro', isa => ApiGateway_EndpointConfiguration, predicate => 1);
  has RegionalCertificateArn => (is => 'ro', isa => Str, predicate => 1);
  has RegionalCertificateName => (is => 'ro', isa => Str, predicate => 1);
  has SecurityPolicy => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDomainName');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/domainnames');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::DomainName');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateChain' => {
                                       'type' => 'Str'
                                     },
               'CertificateName' => {
                                      'type' => 'Str'
                                    },
               'SecurityPolicy' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'RegionalCertificateName' => {
                                              'type' => 'Str'
                                            },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'CertificateBody' => {
                                      'type' => 'Str'
                                    },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'CertificatePrivateKey' => {
                                            'type' => 'Str'
                                          },
               'RegionalCertificateArn' => {
                                             'type' => 'Str'
                                           },
               'EndpointConfiguration' => {
                                            'class' => 'Paws::ApiGateway::EndpointConfiguration',
                                            'type' => 'ApiGateway_EndpointConfiguration'
                                          }
             },
  'NameInRequest' => {
                       'DomainName' => 'domainName',
                       'CertificateArn' => 'certificateArn',
                       'CertificateBody' => 'certificateBody',
                       'RegionalCertificateArn' => 'regionalCertificateArn',
                       'CertificatePrivateKey' => 'certificatePrivateKey',
                       'EndpointConfiguration' => 'endpointConfiguration',
                       'CertificateChain' => 'certificateChain',
                       'CertificateName' => 'certificateName',
                       'RegionalCertificateName' => 'regionalCertificateName',
                       'Tags' => 'tags',
                       'SecurityPolicy' => 'securityPolicy'
                     },
  'IsRequired' => {
                    'DomainName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDomainName - Arguments for method CreateDomainName on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainName on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $DomainName = $apigateway->CreateDomainName(
      DomainName            => 'MyString',
      CertificateArn        => 'MyString',    # OPTIONAL
      CertificateBody       => 'MyString',    # OPTIONAL
      CertificateChain      => 'MyString',    # OPTIONAL
      CertificateName       => 'MyString',    # OPTIONAL
      CertificatePrivateKey => 'MyString',    # OPTIONAL
      EndpointConfiguration => {
        Types => [
          'REGIONAL', ...                     # values: REGIONAL, EDGE, PRIVATE
        ],                                    # OPTIONAL
        VpcEndpointIds => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      RegionalCertificateArn  => 'MyString',                       # OPTIONAL
      RegionalCertificateName => 'MyString',                       # OPTIONAL
      SecurityPolicy          => 'TLS_1_0',                        # OPTIONAL
      Tags                    => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $CertificateArn           = $DomainName->CertificateArn;
    my $CertificateName          = $DomainName->CertificateName;
    my $CertificateUploadDate    = $DomainName->CertificateUploadDate;
    my $DistributionDomainName   = $DomainName->DistributionDomainName;
    my $DistributionHostedZoneId = $DomainName->DistributionHostedZoneId;
    my $DomainName               = $DomainName->DomainName;
    my $DomainNameStatus         = $DomainName->DomainNameStatus;
    my $DomainNameStatusMessage  = $DomainName->DomainNameStatusMessage;
    my $EndpointConfiguration    = $DomainName->EndpointConfiguration;
    my $RegionalCertificateArn   = $DomainName->RegionalCertificateArn;
    my $RegionalCertificateName  = $DomainName->RegionalCertificateName;
    my $RegionalDomainName       = $DomainName->RegionalDomainName;
    my $RegionalHostedZoneId     = $DomainName->RegionalHostedZoneId;
    my $SecurityPolicy           = $DomainName->SecurityPolicy;
    my $Tags                     = $DomainName->Tags;

    # Returns a L<Paws::ApiGateway::DomainName> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateDomainName>

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an AWS-managed certificate that will be used by
edge-optimized endpoint for this domain name. AWS Certificate Manager
is the only supported source.



=head2 CertificateBody => Str

[Deprecated] The body of the server certificate that will be used by
edge-optimized endpoint for this domain name provided by your
certificate authority.



=head2 CertificateChain => Str

[Deprecated] The intermediate certificates and optionally the root
certificate, one after the other without any blank lines, used by an
edge-optimized endpoint for this domain name. If you include the root
certificate, your certificate chain must start with intermediate
certificates and end with the root certificate. Use the intermediate
certificates that were provided by your certificate authority. Do not
include any intermediaries that are not in the chain of trust path.



=head2 CertificateName => Str

The user-friendly name of the certificate that will be used by
edge-optimized endpoint for this domain name.



=head2 CertificatePrivateKey => Str

[Deprecated] Your edge-optimized endpoint's domain name certificate's
private key.



=head2 B<REQUIRED> DomainName => Str

[Required] The name of the DomainName resource.



=head2 EndpointConfiguration => ApiGateway_EndpointConfiguration

The endpoint configuration of this DomainName showing the endpoint
types of the domain name.



=head2 RegionalCertificateArn => Str

The reference to an AWS-managed certificate that will be used by
regional endpoint for this domain name. AWS Certificate Manager is the
only supported source.



=head2 RegionalCertificateName => Str

The user-friendly name of the certificate that will be used by regional
endpoint for this domain name.



=head2 SecurityPolicy => Str

The Transport Layer Security (TLS) version + cipher suite for this
DomainName. The valid values are C<TLS_1_0> and C<TLS_1_2>.

Valid values are: C<"TLS_1_0">, C<"TLS_1_2">

=head2 Tags => ApiGateway_MapOfStringToString

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

