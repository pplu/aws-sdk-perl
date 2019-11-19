
package Paws::Polly::ListLexiconsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Polly::Types qw/Polly_LexiconDescription/;
  has Lexicons => (is => 'ro', isa => ArrayRef[Polly_LexiconDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Lexicons' => {
                               'class' => 'Paws::Polly::LexiconDescription',
                               'type' => 'ArrayRef[Polly_LexiconDescription]'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListLexiconsOutput

=head1 ATTRIBUTES


=head2 Lexicons => ArrayRef[Polly_LexiconDescription]

A list of lexicon names and attributes.


=head2 NextToken => Str

The pagination token to use in the next request to continue the listing
of lexicons. C<NextToken> is returned only if the response is
truncated.


=head2 _request_id => Str


=cut

