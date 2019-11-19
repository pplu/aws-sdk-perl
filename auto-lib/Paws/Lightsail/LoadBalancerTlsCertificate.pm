# Generated from default/object.tt
package Paws::Lightsail::LoadBalancerTlsCertificate;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool Undef/;
  use Paws::Lightsail::Types qw/Lightsail_ResourceLocation Lightsail_LoadBalancerTlsCertificateDomainValidationRecord Lightsail_Tag Lightsail_LoadBalancerTlsCertificateRenewalSummary/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str);
  has DomainValidationRecords => (is => 'ro', isa => ArrayRef[Lightsail_LoadBalancerTlsCertificateDomainValidationRecord]);
  has FailureReason => (is => 'ro', isa => Str);
  has IsAttached => (is => 'ro', isa => Bool);
  has IssuedAt => (is => 'ro', isa => Str);
  has Issuer => (is => 'ro', isa => Str);
  has KeyAlgorithm => (is => 'ro', isa => Str);
  has LoadBalancerName => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Lightsail_ResourceLocation);
  has Name => (is => 'ro', isa => Str);
  has NotAfter => (is => 'ro', isa => Str);
  has NotBefore => (is => 'ro', isa => Str);
  has RenewalSummary => (is => 'ro', isa => Lightsail_LoadBalancerTlsCertificateRenewalSummary);
  has ResourceType => (is => 'ro', isa => Str);
  has RevocationReason => (is => 'ro', isa => Str);
  has RevokedAt => (is => 'ro', isa => Str);
  has Serial => (is => 'ro', isa => Str);
  has SignatureAlgorithm => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Subject => (is => 'ro', isa => Str);
  has SubjectAlternativeNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SupportCode => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'NotAfter' => 'notAfter',
                       'KeyAlgorithm' => 'keyAlgorithm',
                       'SubjectAlternativeNames' => 'subjectAlternativeNames',
                       'DomainValidationRecords' => 'domainValidationRecords',
                       'IssuedAt' => 'issuedAt',
                       'Status' => 'status',
                       'SignatureAlgorithm' => 'signatureAlgorithm',
                       'SupportCode' => 'supportCode',
                       'IsAttached' => 'isAttached',
                       'Serial' => 'serial',
                       'ResourceType' => 'resourceType',
                       'FailureReason' => 'failureReason',
                       'Arn' => 'arn',
                       'Issuer' => 'issuer',
                       'RenewalSummary' => 'renewalSummary',
                       'Location' => 'location',
                       'CreatedAt' => 'createdAt',
                       'Subject' => 'subject',
                       'NotBefore' => 'notBefore',
                       'Name' => 'name',
                       'LoadBalancerName' => 'loadBalancerName',
                       'RevocationReason' => 'revocationReason',
                       'DomainName' => 'domainName',
                       'RevokedAt' => 'revokedAt'
                     },
  'types' => {
               'IssuedAt' => {
                               'type' => 'Str'
                             },
               'DomainValidationRecords' => {
                                              'type' => 'ArrayRef[Lightsail_LoadBalancerTlsCertificateDomainValidationRecord]',
                                              'class' => 'Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord'
                                            },
               'SubjectAlternativeNames' => {
                                              'type' => 'ArrayRef[Str|Undef]'
                                            },
               'KeyAlgorithm' => {
                                   'type' => 'Str'
                                 },
               'NotAfter' => {
                               'type' => 'Str'
                             },
               'Tags' => {
                           'class' => 'Paws::Lightsail::Tag',
                           'type' => 'ArrayRef[Lightsail_Tag]'
                         },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Serial' => {
                             'type' => 'Str'
                           },
               'IsAttached' => {
                                 'type' => 'Bool'
                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'SignatureAlgorithm' => {
                                         'type' => 'Str'
                                       },
               'SupportCode' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Subject' => {
                              'type' => 'Str'
                            },
               'Issuer' => {
                             'type' => 'Str'
                           },
               'RenewalSummary' => {
                                     'class' => 'Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary',
                                     'type' => 'Lightsail_LoadBalancerTlsCertificateRenewalSummary'
                                   },
               'Location' => {
                               'type' => 'Lightsail_ResourceLocation',
                               'class' => 'Paws::Lightsail::ResourceLocation'
                             },
               'Arn' => {
                          'type' => 'Str'
                        },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'RevokedAt' => {
                                'type' => 'Str'
                              },
               'LoadBalancerName' => {
                                       'type' => 'Str'
                                     },
               'RevocationReason' => {
                                       'type' => 'Str'
                                     },
               'Name' => {
                           'type' => 'Str'
                         },
               'NotBefore' => {
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

Paws::Lightsail::LoadBalancerTlsCertificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancerTlsCertificate object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancerTlsCertificate object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a load balancer SSL/TLS certificate.

TLS is just an updated, more secure version of Secure Socket Layer
(SSL).

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the SSL/TLS certificate.


=head2 CreatedAt => Str

  The time when you created your SSL/TLS certificate.


=head2 DomainName => Str

  The domain name for your SSL/TLS certificate.


=head2 DomainValidationRecords => ArrayRef[Lightsail_LoadBalancerTlsCertificateDomainValidationRecord]

  An array of LoadBalancerTlsCertificateDomainValidationRecord objects
describing the records.


=head2 FailureReason => Str

  The reason for the SSL/TLS certificate validation failure.


=head2 IsAttached => Bool

  When C<true>, the SSL/TLS certificate is attached to the Lightsail load
balancer.


=head2 IssuedAt => Str

  The time when the SSL/TLS certificate was issued.


=head2 Issuer => Str

  The issuer of the certificate.


=head2 KeyAlgorithm => Str

  The algorithm that was used to generate the key pair (the public and
private key).


=head2 LoadBalancerName => Str

  The load balancer name where your SSL/TLS certificate is attached.


=head2 Location => Lightsail_ResourceLocation

  The AWS Region and Availability Zone where you created your
certificate.


=head2 Name => Str

  The name of the SSL/TLS certificate (e.g., C<my-certificate>).


=head2 NotAfter => Str

  The timestamp when the SSL/TLS certificate expires.


=head2 NotBefore => Str

  The timestamp when the SSL/TLS certificate is first valid.


=head2 RenewalSummary => Lightsail_LoadBalancerTlsCertificateRenewalSummary

  An object containing information about the status of Lightsail's
managed renewal for the certificate.


=head2 ResourceType => Str

  The resource type (e.g., C<LoadBalancerTlsCertificate>).

=over

=item *

B<C<Instance> > - A Lightsail instance (a virtual private server)

=item *

B<C<StaticIp> > - A static IP address

=item *

B<C<KeyPair> > - The key pair used to connect to a Lightsail instance

=item *

B<C<InstanceSnapshot> > - A Lightsail instance snapshot

=item *

B<C<Domain> > - A DNS zone

=item *

B<C<PeeredVpc> > - A peered VPC

=item *

B<C<LoadBalancer> > - A Lightsail load balancer

=item *

B<C<LoadBalancerTlsCertificate> > - An SSL/TLS certificate associated
with a Lightsail load balancer

=item *

B<C<Disk> > - A Lightsail block storage disk

=item *

B<C<DiskSnapshot> > - A block storage disk snapshot

=back



=head2 RevocationReason => Str

  The reason the certificate was revoked. Valid values are below.


=head2 RevokedAt => Str

  The timestamp when the SSL/TLS certificate was revoked.


=head2 Serial => Str

  The serial number of the certificate.


=head2 SignatureAlgorithm => Str

  The algorithm that was used to sign the certificate.


=head2 Status => Str

  The status of the SSL/TLS certificate. Valid values are below.


=head2 Subject => Str

  The name of the entity that is associated with the public key contained
in the certificate.


=head2 SubjectAlternativeNames => ArrayRef[Str|Undef]

  One or more domains or subdomains included in the certificate. This
list contains the domain names that are bound to the public key that is
contained in the certificate. The subject alternative names include the
canonical domain name (CNAME) of the certificate and additional domain
names that can be used to connect to the website, such as
C<example.com>, C<www.example.com>, or C<m.example.com>.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about your Lightsail load balancer or SSL/TLS
certificate. This code enables our support team to look up your
Lightsail information more easily.


=head2 Tags => ArrayRef[Lightsail_Tag]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

