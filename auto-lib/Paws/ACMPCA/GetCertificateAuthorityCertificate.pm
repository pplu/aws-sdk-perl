
package Paws::ACMPCA::GetCertificateAuthorityCertificate;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCertificateAuthorityCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::GetCertificateAuthorityCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetCertificateAuthorityCertificate - Arguments for method GetCertificateAuthorityCertificate on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCertificateAuthorityCertificate on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method GetCertificateAuthorityCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCertificateAuthorityCertificate.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $GetCertificateAuthorityCertificateResponse =
      $acm -pca->GetCertificateAuthorityCertificate(
      CertificateAuthorityArn => 'MyArn',

      );

    # Results:
    my $Certificate = $GetCertificateAuthorityCertificateResponse->Certificate;
    my $CertificateChain =
      $GetCertificateAuthorityCertificateResponse->CertificateChain;

 # Returns a L<Paws::ACMPCA::GetCertificateAuthorityCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/GetCertificateAuthorityCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of your private CA. This is of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCertificateAuthorityCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

