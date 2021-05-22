
package Paws::Lightsail::GetCertificatesResult;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::CertificateSummary]', traits => ['NameInRequest'], request_name => 'certificates' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCertificatesResult

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::Lightsail::CertificateSummary>]

An object that describes certificates.


=head2 _request_id => Str


=cut

1;