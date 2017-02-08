
package Paws::ApiGateway::ClientCertificates;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ClientCertificate]', traits => ['Unwrapped'], xmlname => 'items');
  has Position => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'position');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificates

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::ClientCertificate>]

The current page of any ClientCertificate resources in the collection
of ClientCertificate resources.


=head2 Position => Str




=head2 _request_id => Str


=cut

