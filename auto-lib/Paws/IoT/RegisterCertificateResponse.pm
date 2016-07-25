
package Paws::IoT::RegisterCertificateResponse;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The certificate ARN.



=head2 CertificateId => Str

The certificate identifier.




=cut

