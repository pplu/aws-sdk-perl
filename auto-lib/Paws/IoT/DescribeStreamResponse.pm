
package Paws::IoT::DescribeStreamResponse;
  use Moose;
  has StreamInfo => (is => 'ro', isa => 'Paws::IoT::StreamInfo', traits => ['NameInRequest'], request_name => 'streamInfo');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeStreamResponse

=head1 ATTRIBUTES


=head2 StreamInfo => L<Paws::IoT::StreamInfo>

Information about the stream.


=head2 _request_id => Str


=cut

