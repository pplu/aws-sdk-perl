
package Paws::KinesisVideoArchivedMedia::GetHLSStreamingSessionURLOutput;
  use Moose;
  has HLSStreamingSessionURL => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
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

