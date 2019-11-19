# Generated from default/object.tt
package Paws::ApiGatewayV2::DomainNameConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiGatewayDomainName => (is => 'ro', isa => Str);
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateName => (is => 'ro', isa => Str);
  has CertificateUploadDate => (is => 'ro', isa => Str);
  has DomainNameStatus => (is => 'ro', isa => Str);
  has DomainNameStatusMessage => (is => 'ro', isa => Str);
  has EndpointType => (is => 'ro', isa => Str);
  has HostedZoneId => (is => 'ro', isa => Str);
  has SecurityPolicy => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DomainNameStatusMessage' => 'domainNameStatusMessage',
                       'HostedZoneId' => 'hostedZoneId',
                       'EndpointType' => 'endpointType',
                       'SecurityPolicy' => 'securityPolicy',
                       'CertificateName' => 'certificateName',
                       'DomainNameStatus' => 'domainNameStatus',
                       'ApiGatewayDomainName' => 'apiGatewayDomainName',
                       'CertificateUploadDate' => 'certificateUploadDate',
                       'CertificateArn' => 'certificateArn'
                     },
  'types' => {
               'EndpointType' => {
                                   'type' => 'Str'
                                 },
               'SecurityPolicy' => {
                                     'type' => 'Str'
                                   },
               'CertificateName' => {
                                      'type' => 'Str'
                                    },
               'DomainNameStatus' => {
                                       'type' => 'Str'
                                     },
               'ApiGatewayDomainName' => {
                                           'type' => 'Str'
                                         },
               'CertificateUploadDate' => {
                                            'type' => 'Str'
                                          },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'DomainNameStatusMessage' => {
                                              'type' => 'Str'
                                            },
               'HostedZoneId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DomainNameConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::DomainNameConfiguration object:

  $service_obj->Method(Att1 => { ApiGatewayDomainName => $value, ..., SecurityPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::DomainNameConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiGatewayDomainName

=head1 DESCRIPTION

The domain name configuration.

=head1 ATTRIBUTES


=head2 ApiGatewayDomainName => Str

  A domain name for the WebSocket API.


=head2 CertificateArn => Str

  An AWS-managed certificate that will be used by the edge-optimized
endpoint for this domain name. AWS Certificate Manager is the only
supported source.


=head2 CertificateName => Str

  The user-friendly name of the certificate that will be used by the
edge-optimized endpoint for this domain name.


=head2 CertificateUploadDate => Str

  The timestamp when the certificate that was used by edge-optimized
endpoint for this domain name was uploaded.


=head2 DomainNameStatus => Str

  The status of the domain name migration. The valid values are AVAILABLE
and UPDATING. If the status is UPDATING, the domain cannot be modified
further until the existing operation is complete. If it is AVAILABLE,
the domain can be updated.


=head2 DomainNameStatusMessage => Str

  An optional text message containing detailed information about status
of the domain name migration.


=head2 EndpointType => Str

  The endpoint type.


=head2 HostedZoneId => Str

  The Amazon Route 53 Hosted Zone ID of the endpoint.


=head2 SecurityPolicy => Str

  The Transport Layer Security (TLS) version of the security policy for
this domain name. The valid values are TLS_1_0 and TLS_1_2.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

