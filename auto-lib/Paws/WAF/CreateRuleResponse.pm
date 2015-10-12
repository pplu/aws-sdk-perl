
package Paws::WAF::CreateRuleResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Paws::WAF::Rule');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRuleResponse

=head1 ATTRIBUTES

=head2 ChangeToken => Str

  The C<ChangeToken> that you used to submit the C<CreateRule> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.
=head2 Rule => Paws::WAF::Rule

  The Rule returned in the C<CreateRule> response.


=cut

1;