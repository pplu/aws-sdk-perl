
package Paws::Personalize::ListSolutionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Solutions => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::SolutionSummary]', traits => ['NameInRequest'], request_name => 'solutions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSolutionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of solutions (if they exist).


=head2 Solutions => ArrayRef[L<Paws::Personalize::SolutionSummary>]

A list of the current solutions.


=head2 _request_id => Str


=cut

1;