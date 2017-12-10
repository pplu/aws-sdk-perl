
package Paws::Comprehend::DetectDominantLanguageResponse;
  use Moose;
  has Languages => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DominantLanguage]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectDominantLanguageResponse

=head1 ATTRIBUTES


=head2 Languages => ArrayRef[L<Paws::Comprehend::DominantLanguage>]

The languages that Amazon Comprehend detected in the input text. For
each language, the response returns the RFC 5646 language code and the
level of confidence that Amazon Comprehend has in the accuracy of its
inference. For more information about RFC 5646, see Tags for
Identifying Languages (https://tools.ietf.org/html/rfc5646) on the
I<IETF Tools> web site.


=head2 _request_id => Str


=cut

1;