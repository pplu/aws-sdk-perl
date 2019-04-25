package Paws::ACMPCA::CrlConfiguration;
  use Moose;
  has CustomCname => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has ExpirationInDays => (is => 'ro', isa => 'Int');
  has S3BucketName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CrlConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACMPCA::CrlConfiguration object:

  $service_obj->Method(Att1 => { CustomCname => $value, ..., S3BucketName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACMPCA::CrlConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomCname

=head1 DESCRIPTION

Contains configuration information for a certificate revocation list
(CRL). Your private certificate authority (CA) creates base CRLs. Delta
CRLs are not supported. You can enable CRLs for your new or an existing
private CA by setting the B<Enabled> parameter to C<true>. Your private
CA writes CRLs to an S3 bucket that you specify in the B<S3BucketName>
parameter. You can hide the name of your bucket by specifying a value
for the B<CustomCname> parameter. Your private CA copies the CNAME or
the S3 bucket name to the B<CRL Distribution Points> extension of each
certificate it issues. Your S3 bucket policy must give write permission
to ACM PCA.

Your private CA uses the value in the B<ExpirationInDays> parameter to
calculate the B<nextUpdate> field in the CRL. The CRL is refreshed at
1/2 the age of next update or when a certificate is revoked. When a
certificate is revoked, it is recorded in the next CRL that is
generated and in the next audit report. Only time valid certificates
are listed in the CRL. Expired certificates are not included.

CRLs contain the following fields:

=over

=item *

B<Version>: The current version number defined in RFC 5280 is V2. The
integer value is 0x1.

=item *

B<Signature Algorithm>: The name of the algorithm used to sign the CRL.

=item *

B<Issuer>: The X.500 distinguished name of your private CA that issued
the CRL.

=item *

B<Last Update>: The issue date and time of this CRL.

=item *

B<Next Update>: The day and time by which the next CRL will be issued.

=item *

B<Revoked Certificates>: List of revoked certificates. Each list item
contains the following information.

=over

=item *

B<Serial Number>: The serial number, in hexadecimal format, of the
revoked certificate.

=item *

B<Revocation Date>: Date and time the certificate was revoked.

=item *

B<CRL Entry Extensions>: Optional extensions for the CRL entry.

=over

=item *

B<X509v3 CRL Reason Code>: Reason the certificate was revoked.

=back

=back

=item *

B<CRL Extensions>: Optional extensions for the CRL.

=over

=item *

B<X509v3 Authority Key Identifier>: Identifies the public key
associated with the private key used to sign the certificate.

=item *

B<X509v3 CRL Number:>: Decimal sequence number for the CRL.

=back

=item *

B<Signature Algorithm>: Algorithm used by your private CA to sign the
CRL.

=item *

B<Signature Value>: Signature computed over the CRL.

=back

Certificate revocation lists created by ACM PCA are DER-encoded. You
can use the following OpenSSL command to list a CRL.

C<openssl crl -inform DER -text -in I<crl_path> -noout>

=head1 ATTRIBUTES


=head2 CustomCname => Str

  Name inserted into the certificate B<CRL Distribution Points> extension
that enables the use of an alias for the CRL distribution point. Use
this value if you don't want the name of your S3 bucket to be public.


=head2 B<REQUIRED> Enabled => Bool

  Boolean value that specifies whether certificate revocation lists
(CRLs) are enabled. You can use this value to enable certificate
revocation for a new CA when you call the CreateCertificateAuthority
operation or for an existing CA when you call the
UpdateCertificateAuthority operation.


=head2 ExpirationInDays => Int

  Number of days until a certificate expires.


=head2 S3BucketName => Str

  Name of the S3 bucket that contains the CRL. If you do not provide a
value for the B<CustomCname> argument, the name of your S3 bucket is
placed into the B<CRL Distribution Points> extension of the issued
certificate. You can change the name of your bucket by calling the
UpdateCertificateAuthority operation. You must specify a bucket policy
that allows ACM PCA to write the CRL to your bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

