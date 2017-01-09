
package Paws::WAFRegional::GetWebACLForResourceResponse;
  use Moose;
  has WebACLSummary => (is => 'ro', isa => 'Paws::WAFRegional::WebACLSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetWebACLForResourceResponse

=head1 ATTRIBUTES


=head2 WebACLSummary => L<Paws::WAFRegional::WebACLSummary>

Information about the web ACL that you specified in the
C<GetWebACLForResource> request. If there is no associated resource, a
null WebACLSummary is returned.


=head2 _request_id => Str


=cut

1;