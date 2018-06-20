
package Paws::MediaTailor::ListPlaybackConfigurationsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::PlaybackConfiguration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListPlaybackConfigurationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::PlaybackConfiguration>]

Array of playback configurations. This may be all of the available
configurations or a subset, depending on the settings you provide and
on the total number of configurations stored.


=head2 NextToken => Str

Pagination token returned by the GET list request when results overrun
the meximum allowed. Use the token to fetch the next page of results.


=head2 _request_id => Str


=cut

