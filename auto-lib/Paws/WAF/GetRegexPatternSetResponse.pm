
package Paws::WAF::GetRegexPatternSetResponse;
  use Moose;
  has RegexPatternSet => (is => 'ro', isa => 'Paws::WAF::RegexPatternSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 RegexPatternSet => L<Paws::WAF::RegexPatternSet>

Information about the RegexPatternSet that you specified in the
C<GetRegexPatternSet> request, including the identifier of the pattern
set and the regular expression patterns you want AWS WAF to search for.


=head2 _request_id => Str


=cut

1;