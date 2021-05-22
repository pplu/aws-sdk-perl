
package Paws::WAFV2::CreateRegexPatternSetResponse;
  use Moose;
  has Summary => (is => 'ro', isa => 'Paws::WAFV2::RegexPatternSetSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 Summary => L<Paws::WAFV2::RegexPatternSetSummary>

High-level information about a RegexPatternSet, returned by operations
like create and list. This provides information like the ID, that you
can use to retrieve and manage a C<RegexPatternSet>, and the ARN, that
you provide to the RegexPatternSetReferenceStatement to use the pattern
set in a Rule.


=head2 _request_id => Str


=cut

1;