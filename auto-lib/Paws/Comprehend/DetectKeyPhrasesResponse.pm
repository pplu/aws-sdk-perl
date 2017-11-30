
package Paws::Comprehend::DetectKeyPhrasesResponse;
  use Moose;
  has KeyPhrases => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::KeyPhrase]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectKeyPhrasesResponse

=head1 ATTRIBUTES


=head2 KeyPhrases => ArrayRef[L<Paws::Comprehend::KeyPhrase>]

A collection of key phrases that Amazon Comprehend identified in the
input text. For each key phrase, the response provides the text of the
key phrase, where the key phrase begins and ends, and the level of
confidence that Amazon Comprehend has in the accuracy of the detection.


=head2 _request_id => Str


=cut

1;