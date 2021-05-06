
package Paws::IoT::DescribeCACertificateResponse;
  use Moose;
  has CertificateDescription => (is => 'ro', isa => 'Paws::IoT::CACertificateDescription', traits => ['NameInRequest'], request_name => 'certificateDescription');
  has RegistrationConfig => (is => 'ro', isa => 'Paws::IoT::RegistrationConfig', traits => ['NameInRequest'], request_name => 'registrationConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCACertificateResponse

=head1 ATTRIBUTES


=head2 CertificateDescription => L<Paws::IoT::CACertificateDescription>

The CA certificate description.


=head2 RegistrationConfig => L<Paws::IoT::RegistrationConfig>

Information about the registration configuration.


=head2 _request_id => Str


=cut

