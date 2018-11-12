
package Paws::ACMPCA::CreateCertificateAuthorityAuditReport;
  use Moose;
  has AuditReportResponseFormat => (is => 'ro', isa => 'Str', required => 1);
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has S3BucketName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCertificateAuthorityAuditReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreateCertificateAuthorityAuditReport - Arguments for method CreateCertificateAuthorityAuditReport on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCertificateAuthorityAuditReport on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method CreateCertificateAuthorityAuditReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCertificateAuthorityAuditReport.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $CreateCertificateAuthorityAuditReportResponse =
      $acm -pca->CreateCertificateAuthorityAuditReport(
      AuditReportResponseFormat => 'JSON',
      CertificateAuthorityArn   => 'MyArn',
      S3BucketName              => 'MyString',

      );

    # Results:
    my $AuditReportId =
      $CreateCertificateAuthorityAuditReportResponse->AuditReportId;
    my $S3Key = $CreateCertificateAuthorityAuditReportResponse->S3Key;

# Returns a L<Paws::ACMPCA::CreateCertificateAuthorityAuditReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/CreateCertificateAuthorityAuditReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuditReportResponseFormat => Str

Format in which to create the report. This can be either B<JSON> or
B<CSV>.

Valid values are: C<"JSON">, C<"CSV">

=head2 B<REQUIRED> CertificateAuthorityArn => Str

Amazon Resource Name (ARN) of the CA to be audited. This is of the
form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.



=head2 B<REQUIRED> S3BucketName => Str

Name of the S3 bucket that will contain the audit report.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCertificateAuthorityAuditReport in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

