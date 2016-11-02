
package Paws::RedShift::CreateHsmClientCertificateResult;
  use Moose;
  has HsmClientCertificate => (is => 'ro', isa => 'Paws::RedShift::HsmClientCertificate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateHsmClientCertificateResult

=head1 ATTRIBUTES


=head2 HsmClientCertificate => L<Paws::RedShift::HsmClientCertificate>




=head2 _request_id => Str


=cut

