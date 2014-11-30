
package Paws::Kinesis::GetRecordsOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Record]', required => 1);

}

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::GetRecordsOutput

=head1 ATTRIBUTES

=head2 NextShardIterator => Str

  

The next position in the shard from which to start sequentially reading
data records. If set to C<null>, the shard has been closed and the
requested iterator will not return any more data.









=head2 B<REQUIRED> Records => ArrayRef[Paws::Kinesis::Record]

  

The data records retrieved from the shard.











=cut

1;