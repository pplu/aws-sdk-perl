
package Paws::ApiGateway::ClientCertificate;
  use Moose;
  has ClientCertificateId => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has Description => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has PemEncodedCertificate => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificate

=head1 ATTRIBUTES


=head2 ClientCertificateId => Str





=head2 CreatedDate => L<Paws::API::TimeStamp>





=head2 Description => Str





=head2 ExpirationDate => L<Paws::API::TimeStamp>





=head2 PemEncodedCertificate => Str






=cut

