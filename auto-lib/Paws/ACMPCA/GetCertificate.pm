
package Paws::ACMPCA::GetCertificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::GetCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetCertificate - Arguments for method GetCertificate on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCertificate on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method GetCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCertificate.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $GetCertificateResponse = $acm -pca->GetCertificate(
      CertificateArn          => 'MyArn',
      CertificateAuthorityArn => 'MyArn',

    );

    # Results:
    my $Certificate      = $GetCertificateResponse->Certificate;
    my $CertificateChain = $GetCertificateResponse->CertificateChain;

    # Returns a L<Paws::ACMPCA::GetCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/GetCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

The ARN of the issued certificate. The ARN contains the certificate
serial number and must be in the following form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>/certificate/I<286535153982981100925020015808220737245>>



=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority. This must be of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCertificate in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

