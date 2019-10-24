
package Paws::Polly::GetLexiconOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Polly::Types qw/Polly_LexiconAttributes Polly_Lexicon/;
  has Lexicon => (is => 'ro', isa => Polly_Lexicon);
  has LexiconAttributes => (is => 'ro', isa => Polly_LexiconAttributes);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LexiconAttributes' => {
                                        'class' => 'Paws::Polly::LexiconAttributes',
                                        'type' => 'Polly_LexiconAttributes'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Lexicon' => {
                              'class' => 'Paws::Polly::Lexicon',
                              'type' => 'Polly_Lexicon'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::GetLexiconOutput

=head1 ATTRIBUTES


=head2 Lexicon => Polly_Lexicon

Lexicon object that provides name and the string content of the
lexicon.


=head2 LexiconAttributes => Polly_LexiconAttributes

Metadata of the lexicon, including phonetic alphabetic used, language
code, lexicon ARN, number of lexemes defined in the lexicon, and size
of lexicon in bytes.


=head2 _request_id => Str


=cut

