# Generated from callresult_class.tt

package Paws::RedShift::TrackListMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_MaintenanceTrack/;
  has MaintenanceTracks => (is => 'ro', isa => ArrayRef[RedShift_MaintenanceTrack]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaintenanceTracks' => {
                                        'class' => 'Paws::RedShift::MaintenanceTrack',
                                        'type' => 'ArrayRef[RedShift_MaintenanceTrack]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'MaintenanceTracks' => 'MaintenanceTrack'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TrackListMessage

=head1 ATTRIBUTES


=head2 MaintenanceTracks => ArrayRef[RedShift_MaintenanceTrack]

A list of maintenance tracks output by the C<DescribeClusterTracks>
operation.


=head2 Marker => Str

The starting point to return a set of response tracklist records. You
can retrieve the next set of response records by providing the returned
marker value in the C<Marker> parameter and retrying the request.


=head2 _request_id => Str


=cut

