package Paws::Lightsail::LoadBalancerTlsCertificate;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DomainName => (is => 'ro', isa => 'Str', request_name => 'domainName', traits => ['NameInRequest']);
  has DomainValidationRecords => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord]', request_name => 'domainValidationRecords', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has IsAttached => (is => 'ro', isa => 'Bool', request_name => 'isAttached', traits => ['NameInRequest']);
  has IssuedAt => (is => 'ro', isa => 'Str', request_name => 'issuedAt', traits => ['NameInRequest']);
  has Issuer => (is => 'ro', isa => 'Str', request_name => 'issuer', traits => ['NameInRequest']);
  has KeyAlgorithm => (is => 'ro', isa => 'Str', request_name => 'keyAlgorithm', traits => ['NameInRequest']);
  has LoadBalancerName => (is => 'ro', isa => 'Str', request_name => 'loadBalancerName', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has NotAfter => (is => 'ro', isa => 'Str', request_name => 'notAfter', traits => ['NameInRequest']);
  has NotBefore => (is => 'ro', isa => 'Str', request_name => 'notBefore', traits => ['NameInRequest']);
  has RenewalSummary => (is => 'ro', isa => 'Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary', request_name => 'renewalSummary', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has RevocationReason => (is => 'ro', isa => 'Str', request_name => 'revocationReason', traits => ['NameInRequest']);
  has RevokedAt => (is => 'ro', isa => 'Str', request_name => 'revokedAt', traits => ['NameInRequest']);
  has Serial => (is => 'ro', isa => 'Str', request_name => 'serial', traits => ['NameInRequest']);
  has SignatureAlgorithm => (is => 'ro', isa => 'Str', request_name => 'signatureAlgorithm', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Subject => (is => 'ro', isa => 'Str', request_name => 'subject', traits => ['NameInRequest']);
  has SubjectAlternativeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subjectAlternativeNames', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', request_name => 'tags', traits => ['NameInRequest']);
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


=head2 DomainValidationRecords => ArrayRef[L<Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationRecord>]

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


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The AWS Region and Availability Zone where you created your
certificate.


=head2 Name => Str

  The name of the SSL/TLS certificate (e.g., C<my-certificate>).


=head2 NotAfter => Str

  The timestamp when the SSL/TLS certificate expires.


=head2 NotBefore => Str

  The timestamp when the SSL/TLS certificate is first valid.


=head2 RenewalSummary => L<Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary>

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


=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

  The tag keys and optional values for the resource. For more information
about tags in Lightsail, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

