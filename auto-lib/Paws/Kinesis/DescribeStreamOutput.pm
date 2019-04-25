
package Paws::Kinesis::DescribeStreamOutput;
  use Moose;
  has StreamDescription => (is => 'ro', isa => 'Paws::Kinesis::StreamDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamDescription => L<Paws::Kinesis::StreamDescription>

The current status of the stream, the stream Amazon Resource Name
(ARN), an array of shard objects that comprise the stream, and whether
there are more shards available.


=head2 _request_id => Str


=cut

1;