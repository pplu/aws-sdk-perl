
package Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput;
  use Moose;
  has DASHStreamingSessionURL => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput

=head1 ATTRIBUTES


=head2 DASHStreamingSessionURL => Str

The URL (containing the session token) that a media player can use to
retrieve the MPEG-DASH manifest.


=head2 _request_id => Str


=cut

