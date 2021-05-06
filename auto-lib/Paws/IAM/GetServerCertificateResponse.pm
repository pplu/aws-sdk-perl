
package Paws::IAM::GetServerCertificateResponse;
  use Moose;
  has ServerCertificate => (is => 'ro', isa => 'Paws::IAM::ServerCertificate', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServerCertificateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerCertificate => L<Paws::IAM::ServerCertificate>

A structure containing details about the server certificate.


=head2 _request_id => Str


=cut

