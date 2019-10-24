
package Paws::KinesisVideo::GetDataEndpointOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideo::Types qw//;
  has DataEndpoint => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataEndpoint' => {
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

Paws::KinesisVideo::GetDataEndpointOutput

=head1 ATTRIBUTES


=head2 DataEndpoint => Str

The endpoint value. To read data from the stream or to write data to
it, specify this endpoint in your application.


=head2 _request_id => Str


=cut

