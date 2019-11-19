# Generated from json/callresult_class.tt

package Paws::Comprehend::DetectSyntaxResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_SyntaxToken/;
  has SyntaxTokens => (is => 'ro', isa => ArrayRef[Comprehend_SyntaxToken]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SyntaxTokens' => {
                                   'type' => 'ArrayRef[Comprehend_SyntaxToken]',
                                   'class' => 'Paws::Comprehend::SyntaxToken'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectSyntaxResponse

=head1 ATTRIBUTES


=head2 SyntaxTokens => ArrayRef[Comprehend_SyntaxToken]

A collection of syntax tokens describing the text. For each token, the
response provides the text, the token type, where the text begins and
ends, and the level of confidence that Amazon Comprehend has that the
token is correct. For a list of token types, see how-syntax.


=head2 _request_id => Str


=cut

1;