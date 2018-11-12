
package Paws::ACMPCA::CreateCertificateAuthorityResponse;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreateCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 CertificateAuthorityArn => Str

If successful, the Amazon Resource Name (ARN) of the certificate
authority (CA). This is of the form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.


=head2 _request_id => Str


=cut

1;