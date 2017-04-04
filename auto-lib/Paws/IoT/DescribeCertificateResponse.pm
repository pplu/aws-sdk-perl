
package Paws::IoT::DescribeCertificateResponse;
  use Moose;
  has CertificateDescription => (is => 'ro', isa => 'Paws::IoT::CertificateDescription', traits => ['NameInRequest'], request_name => 'certificateDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateDescription => L<Paws::IoT::CertificateDescription>

The description of the certificate.


=head2 _request_id => Str


=cut

