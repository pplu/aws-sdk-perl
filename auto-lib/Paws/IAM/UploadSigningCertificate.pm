
package Paws::IAM::UploadSigningCertificate;
  use Moose;
  has CertificateBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UploadSigningCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSigningCertificateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSigningCertificate - Arguments for method UploadSigningCertificate on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadSigningCertificate on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UploadSigningCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadSigningCertificate.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To upload a signing certificate for an IAM user
    # The following command uploads a signing certificate for the IAM user named
    # Bob.
    my $UploadSigningCertificateResponse = $iam->UploadSigningCertificate(
      {
        'CertificateBody' =>
'-----BEGIN CERTIFICATE-----<certificate-body>-----END CERTIFICATE-----',
        'UserName' => 'Bob'
      }
    );

    # Results:
    my $Certificate = $UploadSigningCertificateResponse->Certificate;

    # Returns a L<Paws::IAM::UploadSigningCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UploadSigningCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateBody => Str

The contents of the signing certificate.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 UserName => Str

The name of the user the signing certificate is for.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadSigningCertificate in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

