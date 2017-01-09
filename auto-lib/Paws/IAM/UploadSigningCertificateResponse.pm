
package Paws::IAM::UploadSigningCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::IAM::SigningCertificate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSigningCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Certificate => L<Paws::IAM::SigningCertificate>

Information about the certificate.


=head2 _request_id => Str


=cut

