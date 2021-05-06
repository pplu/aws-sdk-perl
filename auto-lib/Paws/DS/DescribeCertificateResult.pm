
package Paws::DS::DescribeCertificateResult;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::DS::Certificate');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeCertificateResult

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::DS::Certificate>

Information about the certificate, including registered date time,
certificate state, the reason for the state, expiration date time, and
certificate common name.


=head2 _request_id => Str


=cut

1;