
package Paws::IoT::ListCACertificatesResponse;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::CACertificate]', traits => ['NameInRequest'], request_name => 'certificates');
  has NextMarker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextMarker');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListCACertificatesResponse

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::IoT::CACertificate>]

The CA certificates registered in your AWS account.


=head2 NextMarker => Str

The current position within the list of CA certificates.


=head2 _request_id => Str


=cut

