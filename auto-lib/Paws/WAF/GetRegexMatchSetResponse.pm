
package Paws::WAF::GetRegexMatchSetResponse;
  use Moose;
  has RegexMatchSet => (is => 'ro', isa => 'Paws::WAF::RegexMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 RegexMatchSet => L<Paws::WAF::RegexMatchSet>

Information about the RegexMatchSet that you specified in the
C<GetRegexMatchSet> request. For more information, see RegexMatchTuple.


=head2 _request_id => Str


=cut

1;