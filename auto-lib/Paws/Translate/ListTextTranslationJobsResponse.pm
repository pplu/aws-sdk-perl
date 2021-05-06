
package Paws::Translate::ListTextTranslationJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TextTranslationJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Translate::TextTranslationJobProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::ListTextTranslationJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retreive the next page of results. This value is
C<null> when there are no more results to return.


=head2 TextTranslationJobPropertiesList => ArrayRef[L<Paws::Translate::TextTranslationJobProperties>]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;