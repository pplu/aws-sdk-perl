
package Paws::WAFRegional::CreateRuleGroupResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has RuleGroup => (is => 'ro', isa => 'Paws::WAFRegional::RuleGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRuleGroupResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRuleGroup>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RuleGroup => L<Paws::WAFRegional::RuleGroup>

An empty RuleGroup.


=head2 _request_id => Str


=cut

1;