
package Paws::LocationService::SearchPlaceIndexForTextResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::SearchForTextResult]', required => 1);
  has Summary => (is => 'ro', isa => 'Paws::LocationService::SearchPlaceIndexForTextSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForTextResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::LocationService::SearchForTextResult>]

A list of Places closest to the specified position. Each result
contains additional information about the specific point of interest.


=head2 B<REQUIRED> Summary => L<Paws::LocationService::SearchPlaceIndexForTextSummary>

Contains a summary of the request. Contains the C<BiasPosition>,
C<DataSource>, C<FilterBBox>, C<FilterCountries>, C<MaxResults>,
C<ResultBBox>, and C<Text>.


=head2 _request_id => Str


=cut

