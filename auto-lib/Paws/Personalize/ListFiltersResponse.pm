
package Paws::Personalize::ListFiltersResponse;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::FilterSummary]');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListFiltersResponse

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Personalize::FilterSummary>]

A list of returned filters.


=head2 NextToken => Str

A token for getting the next set of filters (if they exist).


=head2 _request_id => Str


=cut

1;