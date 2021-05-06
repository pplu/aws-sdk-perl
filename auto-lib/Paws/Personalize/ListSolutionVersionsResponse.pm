
package Paws::Personalize::ListSolutionVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SolutionVersions => (is => 'ro', isa => 'ArrayRef[Paws::Personalize::SolutionVersionSummary]', traits => ['NameInRequest'], request_name => 'solutionVersions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListSolutionVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of solution versions (if they exist).


=head2 SolutionVersions => ArrayRef[L<Paws::Personalize::SolutionVersionSummary>]

A list of solution versions describing the version properties.


=head2 _request_id => Str


=cut

1;