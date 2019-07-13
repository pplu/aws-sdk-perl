
package Paws::RedShift::TrackListMessage;
  use Moose;
  has MaintenanceTracks => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::MaintenanceTrack]', request_name => 'MaintenanceTrack', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TrackListMessage

=head1 ATTRIBUTES


=head2 MaintenanceTracks => ArrayRef[L<Paws::RedShift::MaintenanceTrack>]

A list of maintenance tracks output by the C<DescribeClusterTracks>
operation.


=head2 Marker => Str

The starting point to return a set of response tracklist records. You
can retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.


=head2 _request_id => Str


=cut

