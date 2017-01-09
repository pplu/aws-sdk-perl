
package Paws::WAFRegional::CreateRuleResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::WAFRegional::Rule');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRuleResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRule> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 Rule => L<Paws::WAFRegional::Rule>

The Rule returned in the C<CreateRule> response.


=head2 _request_id => Str


=cut

1;