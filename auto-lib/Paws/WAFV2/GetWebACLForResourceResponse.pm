
package Paws::WAFV2::GetWebACLForResourceResponse;
  use Moose;
  has WebACL => (is => 'ro', isa => 'Paws::WAFV2::WebACL');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetWebACLForResourceResponse

=head1 ATTRIBUTES


=head2 WebACL => L<Paws::WAFV2::WebACL>

The web ACL that is associated with the resource. If there is no
associated resource, WAF returns a null web ACL.


=head2 _request_id => Str


=cut

1;