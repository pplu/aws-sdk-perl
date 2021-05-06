
package Paws::DynamoDBStreams::DescribeStreamOutput;
  use Moose;
  has StreamDescription => (is => 'ro', isa => 'Paws::DynamoDBStreams::StreamDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 StreamDescription => L<Paws::DynamoDBStreams::StreamDescription>

A complete description of the stream, including its creation date and
time, the DynamoDB table associated with the stream, the shard IDs
within the stream, and the beginning and ending sequence numbers of
stream records within the shards.


=head2 _request_id => Str


=cut

1;