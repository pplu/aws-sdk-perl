
package Paws::IAM::UploadServerCertificateResponse;
  use Moose;
  has ServerCertificateMetadata => (is => 'ro', isa => 'Paws::IAM::ServerCertificateMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadServerCertificateResponse

=head1 ATTRIBUTES


=head2 ServerCertificateMetadata => L<Paws::IAM::ServerCertificateMetadata>

The meta information of the uploaded server certificate without its
certificate body, certificate chain, and private key.


=head2 _request_id => Str


=cut

