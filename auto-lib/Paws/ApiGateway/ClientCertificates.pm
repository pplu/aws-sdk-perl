
package Paws::ApiGateway::ClientCertificates;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ClientCertificate]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificates

=head1 ATTRIBUTES

=head2 Items => ArrayRef[L<Paws::ApiGateway::ClientCertificate>]

  
=head2 Position => Str

  


=cut

