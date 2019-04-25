package Paws::ACMPCA::ASN1Subject;
  use Moose;
  has CommonName => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has DistinguishedNameQualifier => (is => 'ro', isa => 'Str');
  has GenerationQualifier => (is => 'ro', isa => 'Str');
  has GivenName => (is => 'ro', isa => 'Str');
  has Initials => (is => 'ro', isa => 'Str');
  has Locality => (is => 'ro', isa => 'Str');
  has Organization => (is => 'ro', isa => 'Str');
  has OrganizationalUnit => (is => 'ro', isa => 'Str');
  has Pseudonym => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Surname => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ASN1Subject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::ASN1Subject object:

  $service_obj->Method(Att1 => { CommonName => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::ASN1Subject object:

  $result = $service_obj->Method(...);
  $result->Att1->CommonName

=head1 DESCRIPTION

Contains information about the certificate subject. The certificate can
be one issued by your private certificate authority (CA) or it can be
your private CA certificate. The B<Subject> field in the certificate
identifies the entity that owns or controls the public key in the
certificate. The entity can be a user, computer, device, or service.
The B<Subject> must contain an X.500 distinguished name (DN). A DN is a
sequence of relative distinguished names (RDNs). The RDNs are separated
by commas in the certificate. The DN must be unique for each entity,
but your private CA can issue more than one certificate with the same
DN to the same entity.

=head1 ATTRIBUTES


=head2 CommonName => Str

  Fully qualified domain name (FQDN) associated with the certificate
subject.


=head2 Country => Str

  Two-digit code that specifies the country in which the certificate
subject located.


=head2 DistinguishedNameQualifier => Str

  Disambiguating information for the certificate subject.


=head2 GenerationQualifier => Str

  Typically a qualifier appended to the name of an individual. Examples
include Jr. for junior, Sr. for senior, and III for third.


=head2 GivenName => Str

  First name.


=head2 Initials => Str

  Concatenation that typically contains the first letter of the
B<GivenName>, the first letter of the middle name if one exists, and
the first letter of the B<SurName>.


=head2 Locality => Str

  The locality (such as a city or town) in which the certificate subject
is located.


=head2 Organization => Str

  Legal name of the organization with which the certificate subject is
affiliated.


=head2 OrganizationalUnit => Str

  A subdivision or unit of the organization (such as sales or finance)
with which the certificate subject is affiliated.


=head2 Pseudonym => Str

  Typically a shortened version of a longer B<GivenName>. For example,
Jonathan is often shortened to John. Elizabeth is often shortened to
Beth, Liz, or Eliza.


=head2 SerialNumber => Str

  The certificate serial number.


=head2 State => Str

  State in which the subject of the certificate is located.


=head2 Surname => Str

  Family name. In the US and the UK, for example, the surname of an
individual is ordered last. In Asian cultures the surname is typically
ordered first.


=head2 Title => Str

  A title such as Mr. or Ms., which is pre-pended to the name to refer
formally to the certificate subject.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

