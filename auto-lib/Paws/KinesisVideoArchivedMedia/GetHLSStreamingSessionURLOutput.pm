
package Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideoArchivedMedia::Types qw//;
  has HLSStreamingSessionURL => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HLSStreamingSessionURL' => {
                                             'type' => 'Str'
                                           },
               '_request_id' => {
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

Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput

=head1 ATTRIBUTES


=head2 HLSStreamingSessionURL => Str

The URL (containing the session token) that a media player can use to
retrieve the HLS master playlist.


=head2 _request_id => Str


=cut

