
package Paws::DynamoDBStreams::GetRecordsOutput;
  use Moose;
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDBStreams::Record]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::GetRecordsOutput

=head1 ATTRIBUTES


=head2 NextShardIterator => Str

The next position in the shard from which to start sequentially reading
stream records. If set to C<null>, the shard has been closed and the
requested iterator will not return any more data.


=head2 Records => ArrayRef[L<Paws::DynamoDBStreams::Record>]

The stream records from the shard, which were retrieved using the shard
iterator.


=head2 _request_id => Str


=cut

1;