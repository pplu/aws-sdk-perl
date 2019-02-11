
package Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse;
  use Moose;
  has WebsiteCaId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::AssociateWebsiteCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 WebsiteCaId => Str

A unique identifier for the CA.


=head2 _request_id => Str


=cut

