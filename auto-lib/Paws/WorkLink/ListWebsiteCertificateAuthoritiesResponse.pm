
package Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WebsiteCertificateAuthorities => (is => 'ro', isa => 'ArrayRef[Paws::WorkLink::WebsiteCaSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 WebsiteCertificateAuthorities => ArrayRef[L<Paws::WorkLink::WebsiteCaSummary>]

Information about the certificates.


=head2 _request_id => Str


=cut

