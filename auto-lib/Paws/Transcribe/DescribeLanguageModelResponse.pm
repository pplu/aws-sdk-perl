
package Paws::Transcribe::DescribeLanguageModelResponse;
  use Moose;
  has LanguageModel => (is => 'ro', isa => 'Paws::Transcribe::LanguageModel');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::DescribeLanguageModelResponse

=head1 ATTRIBUTES


=head2 LanguageModel => L<Paws::Transcribe::LanguageModel>

The name of the custom language model you requested more information
about.


=head2 _request_id => Str


=cut

1;