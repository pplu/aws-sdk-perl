
package Paws::ACMPCA::UpdateCertificateAuthority;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has RevocationConfiguration => (is => 'ro', isa => 'Paws::ACMPCA::RevocationConfiguration');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::UpdateCertificateAuthority - Arguments for method UpdateCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method UpdateCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->UpdateCertificateAuthority(
      CertificateAuthorityArn => 'MyArn',
      RevocationConfiguration => {
        CrlConfiguration => {
          Enabled          => 1,
          CustomCname      => 'MyString253',       # max: 253; OPTIONAL
          ExpirationInDays => 1,                   # min: 1, max: 5000; OPTIONAL
          S3BucketName     => 'MyString3To255',    # min: 3, max: 255; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Status => 'CREATING',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/UpdateCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

Amazon Resource Name (ARN) of the private CA that issued the
certificate to be revoked. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>>



=head2 RevocationConfiguration => L<Paws::ACMPCA::RevocationConfiguration>

Revocation information for your private CA.



=head2 Status => Str

Status of your private CA.

Valid values are: C<"CREATING">, C<"PENDING_CERTIFICATE">, C<"ACTIVE">, C<"DELETED">, C<"DISABLED">, C<"EXPIRED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

