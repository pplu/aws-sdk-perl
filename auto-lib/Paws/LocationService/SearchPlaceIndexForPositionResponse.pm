
package Paws::LocationService::SearchPlaceIndexForPositionResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::SearchForPositionResult]', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::LocationService::SearchPlaceIndexForPositionSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForPositionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::LocationService::SearchForPositionResult>]

Returns a list of Places closest to the specified position. Each result
contains additional information about the Places returned.


=head2 B<REQUIRED> Summary => L<Paws::LocationService::SearchPlaceIndexForPositionSummary>

Contains a summary of the request.


=head2 _request_id => Str


=cut

