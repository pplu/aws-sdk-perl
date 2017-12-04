
package Paws::WAF::CreateRegexPatternSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has RegexPatternSet => (is => 'ro', isa => 'Paws::WAF::RegexPatternSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexPatternSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexPatternSet => L<Paws::WAF::RegexPatternSet>

A RegexPatternSet that contains no objects.


=head2 _request_id => Str


=cut

1;