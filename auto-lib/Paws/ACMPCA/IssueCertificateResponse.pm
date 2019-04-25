
package Paws::ACMPCA::IssueCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::IssueCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the issued certificate and the
certificate serial number. This is of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>/certificate/I<286535153982981100925020015808220737245>>


=head2 _request_id => Str


=cut

1;