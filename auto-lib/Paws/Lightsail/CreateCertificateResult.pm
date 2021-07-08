
package Paws::Lightsail::CreateCertificateResult;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::Lightsail::CertificateSummary', traits => ['NameInRequest'], request_name => 'certificate' );
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateCertificateResult

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::Lightsail::CertificateSummary>

An object that describes the certificate created.


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.


=head2 _request_id => Str


=cut

1;