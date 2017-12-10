
package Paws::KinesisVideo::GetDataEndpointOutput;
  use Moose;
  has DataEndpoint => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
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

