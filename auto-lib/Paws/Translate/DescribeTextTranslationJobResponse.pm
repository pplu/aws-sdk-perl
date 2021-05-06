
package Paws::Translate::DescribeTextTranslationJobResponse;
  use Moose;
  has TextTranslationJobProperties => (is => 'ro', isa => 'Paws::Translate::TextTranslationJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::DescribeTextTranslationJobResponse

=head1 ATTRIBUTES


=head2 TextTranslationJobProperties => L<Paws::Translate::TextTranslationJobProperties>

An object that contains the properties associated with an asynchronous
batch translation job.


=head2 _request_id => Str


=cut

1;