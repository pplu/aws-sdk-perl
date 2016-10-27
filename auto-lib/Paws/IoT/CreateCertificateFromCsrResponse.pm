
package Paws::IoT::CreateCertificateFromCsrResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateId => (is => 'ro', isa => 'Str');
  has CertificatePem => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCertificateFromCsrResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate. You can use the ARN
as a principal for policy operations.



=head2 CertificateId => Str

The ID of the certificate. Certificate management operations only take
a certificateId.



=head2 CertificatePem => Str

The certificate data, in PEM format.




=cut

