
package Paws::ApiGateway::ClientCertificate;
  use Moose;
  has ClientCertificateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientCertificateId');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ExpirationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expirationDate');
  has PemEncodedCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pemEncodedCertificate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificate

=head1 ATTRIBUTES


=head2 ClientCertificateId => Str

The identifier of the client certificate.


=head2 CreatedDate => Str

The timestamp when the client certificate was created.


=head2 Description => Str

The description of the client certificate.


=head2 ExpirationDate => Str

The timestamp when the client certificate will expire.


=head2 PemEncodedCertificate => Str

The PEM-encoded public key of the client certificate, which can be used
to configure certificate authentication in the integration endpoint .


=head2 _request_id => Str


=cut

