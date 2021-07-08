
package Paws::WAFV2::CreateWebACLResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::WAFV2::WebACLSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateWebACLResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::WAFV2::WebACLSummary>

High-level information about a WebACL, returned by operations like
create and list. This provides information like the ID, that you can
use to retrieve and manage a C<WebACL>, and the ARN, that you provide
to operations like AssociateWebACL.


=head2 _request_id => Str


=cut

1;