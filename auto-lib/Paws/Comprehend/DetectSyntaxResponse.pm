
package Paws::Comprehend::DetectSyntaxResponse;
  use Moose;
  has SyntaxTokens => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::SyntaxToken]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectSyntaxResponse

=head1 ATTRIBUTES


=head2 SyntaxTokens => ArrayRef[L<Paws::Comprehend::SyntaxToken>]

A collection of syntax tokens describing the text. For each token, the
response provides the text, the token type, where the text begins and
ends, and the level of confidence that Amazon Comprehend has that the
token is correct. For a list of token types, see how-syntax.


=head2 _request_id => Str


=cut

1;