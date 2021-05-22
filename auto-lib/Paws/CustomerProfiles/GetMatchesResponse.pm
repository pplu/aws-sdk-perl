
package Paws::CustomerProfiles::GetMatchesResponse;
  use Moose;
  has Matches => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::MatchItem]');
  has MatchGenerationDate => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has PotentialMatches => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetMatchesResponse

=head1 ATTRIBUTES


=head2 Matches => ArrayRef[L<Paws::CustomerProfiles::MatchItem>]

The list of matched profiles for this instance.


=head2 MatchGenerationDate => Str

The timestamp this version of Match Result generated.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PotentialMatches => Int

The number of potential matches found.


=head2 _request_id => Str


=cut

