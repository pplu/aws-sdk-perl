
package Paws::WAFRegional::CreateRegexMatchSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has RegexMatchSet => (is => 'ro', isa => 'Paws::WAFRegional::RegexMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexMatchSet => L<Paws::WAFRegional::RegexMatchSet>

A RegexMatchSet that contains no C<RegexMatchTuple> objects.


=head2 _request_id => Str


=cut

1;