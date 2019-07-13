
package Paws::SageMaker::GetSearchSuggestionsResponse;
  use Moose;
  has PropertyNameSuggestions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PropertyNameSuggestion]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetSearchSuggestionsResponse

=head1 ATTRIBUTES


=head2 PropertyNameSuggestions => ArrayRef[L<Paws::SageMaker::PropertyNameSuggestion>]

A list of property names for a C<Resource> that match a
C<SuggestionQuery>.


=head2 _request_id => Str


=cut

1;