
package Paws::IoT1ClickProjects::ListPlacementsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Placements => (is => 'ro', isa => 'ArrayRef[Paws::IoT1ClickProjects::PlacementSummary]', traits => ['NameInRequest'], request_name => 'placements', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListPlacementsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next set of results - will be
effectively empty if there are no further results.


=head2 B<REQUIRED> Placements => ArrayRef[L<Paws::IoT1ClickProjects::PlacementSummary>]

An object listing the requested placements.


=head2 _request_id => Str


=cut

