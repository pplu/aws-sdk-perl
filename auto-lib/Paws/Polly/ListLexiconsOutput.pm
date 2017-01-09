
package Paws::Polly::ListLexiconsOutput;
  use Moose;
  has Lexicons => (is => 'ro', isa => 'ArrayRef[Paws::Polly::LexiconDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListLexiconsOutput

=head1 ATTRIBUTES


=head2 Lexicons => ArrayRef[L<Paws::Polly::LexiconDescription>]

A list of lexicon names and attributes.


=head2 NextToken => Str

The pagination token to use in the next request to continue the listing
of lexicons. C<NextToken> is returned only if the response is
truncated.


=head2 _request_id => Str


=cut

