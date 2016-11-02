
package Paws::ApiGateway::ClientCertificate;
  use Moose;
  has ClientCertificateId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has PemEncodedCertificate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificate

=head1 ATTRIBUTES


=head2 ClientCertificateId => Str

The identifier of the client certificate.


=head2 CreatedDate => Str

The date when the client certificate was created, in ISO 8601 format.


=head2 Description => Str

The description of the client certificate.


=head2 ExpirationDate => Str

The date when the client certificate will expire, in ISO 8601 format.


=head2 PemEncodedCertificate => Str

The PEM-encoded public key of the client certificate, which can be used
to configure certificate authentication in the integration endpoint .


=head2 _request_id => Str


=cut

