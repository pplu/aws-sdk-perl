# Generated from json/callresult_class.tt

package Paws::AppStream::CreateStreamingURLResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw//;
  has Expires => (is => 'ro', isa => Str);
  has StreamingURL => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamingURL' => {
                                   'type' => 'Str'
                                 },
               'Expires' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStreamingURLResult

=head1 ATTRIBUTES


=head2 Expires => Str

The elapsed time, in seconds after the Unix epoch, when this URL
expires.


=head2 StreamingURL => Str

The URL to start the AppStream 2.0 streaming session.


=head2 _request_id => Str


=cut

1;