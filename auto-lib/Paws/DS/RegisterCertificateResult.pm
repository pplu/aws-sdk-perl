
package Paws::DS::RegisterCertificateResult;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::RegisterCertificateResult

=head1 ATTRIBUTES


=head2 CertificateId => Str

The identifier of the certificate.


=head2 _request_id => Str


=cut

1;