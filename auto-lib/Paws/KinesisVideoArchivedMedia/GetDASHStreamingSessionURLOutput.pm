
package Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideoArchivedMedia::Types qw//;
  has DASHStreamingSessionURL => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DASHStreamingSessionURL' => {
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

Paws::KinesisVideoArchivedMedia::GetDASHStreamingSessionURLOutput

=head1 ATTRIBUTES


=head2 DASHStreamingSessionURL => Str

The URL (containing the session token) that a media player can use to
retrieve the MPEG-DASH manifest.


=head2 _request_id => Str


=cut

