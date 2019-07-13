
package Paws::EC2::ExportClientVpnClientCertificateRevocationListResult;
  use Moose;
  has CertificateRevocationList => (is => 'ro', isa => 'Str', request_name => 'certificateRevocationList', traits => ['NameInRequest',]);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientCertificateRevocationListStatus', request_name => 'status', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportClientVpnClientCertificateRevocationListResult

=head1 ATTRIBUTES


=head2 CertificateRevocationList => Str

Information about the client certificate revocation list.


=head2 Status => L<Paws::EC2::ClientCertificateRevocationListStatus>

The current state of the client certificate revocation list.


=head2 _request_id => Str


=cut

