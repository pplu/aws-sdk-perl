
package Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse;
  use Moose;
  has NextWebACLLockToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DeleteFirewallManagerRuleGroupsResponse

=head1 ATTRIBUTES


=head2 NextWebACLLockToken => Str

A token used for optimistic locking. WAF returns a token to your get
and list requests, to mark the state of the entity at the time of the
request. To make changes to the entity associated with the token, you
provide the token to operations like update and delete. WAF uses the
token to ensure that no changes have been made to the entity since you
last retrieved it. If a change has been made, the update fails with a
C<WAFOptimisticLockException>. If this happens, perform another get,
and use the new token returned by that operation.


=head2 _request_id => Str


=cut

1;