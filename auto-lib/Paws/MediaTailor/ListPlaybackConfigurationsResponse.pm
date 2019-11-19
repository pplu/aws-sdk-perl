
package Paws::MediaTailor::ListPlaybackConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaTailor::Types qw/MediaTailor_PlaybackConfiguration/;
  has Items => (is => 'ro', isa => ArrayRef[MediaTailor_PlaybackConfiguration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Items' => {
                            'class' => 'Paws::MediaTailor::PlaybackConfiguration',
                            'type' => 'ArrayRef[MediaTailor_PlaybackConfiguration]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListPlaybackConfigurationsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[MediaTailor_PlaybackConfiguration]

Array of playback configurations. This might be all the available
configurations or a subset, depending on the settings that you provide
and the total number of configurations stored.


=head2 NextToken => Str

Pagination token returned by the GET list request when results exceed
the maximum allowed. Use the token to fetch the next page of results.


=head2 _request_id => Str


=cut

