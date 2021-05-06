
package Paws::Polly::GetLexiconOutput;
  use Moose;
  has Lexicon => (is => 'ro', isa => 'Paws::Polly::Lexicon');
  has LexiconAttributes => (is => 'ro', isa => 'Paws::Polly::LexiconAttributes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::GetLexiconOutput

=head1 ATTRIBUTES


=head2 Lexicon => L<Paws::Polly::Lexicon>

Lexicon object that provides name and the string content of the
lexicon.


=head2 LexiconAttributes => L<Paws::Polly::LexiconAttributes>

Metadata of the lexicon, including phonetic alphabetic used, language
code, lexicon ARN, number of lexemes defined in the lexicon, and size
of lexicon in bytes.


=head2 _request_id => Str


=cut

