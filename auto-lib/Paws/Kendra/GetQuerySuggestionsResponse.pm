
package Paws::Kendra::GetQuerySuggestionsResponse;
  use Moose;
  has QuerySuggestionsId => (is => 'ro', isa => 'Str');
  has Suggestions => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Suggestion]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::GetQuerySuggestionsResponse

=head1 ATTRIBUTES


=head2 QuerySuggestionsId => Str

The unique identifier for a list of query suggestions for an index.


=head2 Suggestions => ArrayRef[L<Paws::Kendra::Suggestion>]

A list of query suggestions for an index.


=head2 _request_id => Str


=cut

1;