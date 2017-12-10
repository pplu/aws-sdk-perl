
package Paws::ELBv2::AddListenerCertificatesOutput;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AddListenerCertificatesOutput

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

Information about the certificates.


=head2 _request_id => Str


=cut

