
package Paws::DynamoDBStreams::GetShardIterator;
  use Moose;
  has SequenceNumber => (is => 'ro', isa => 'Str');
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StreamArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDBStreams::GetShardIteratorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::GetShardIterator - Arguments for method GetShardIterator on L<Paws::DynamoDBStreams>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetShardIterator on the
L<Amazon DynamoDB Streams|Paws::DynamoDBStreams> service. Use the attributes of this class
as arguments to method GetShardIterator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetShardIterator.

=head1 SYNOPSIS

    my $streams.dynamodb = Paws->service('DynamoDBStreams');
    # To obtain a shard iterator for the provided stream ARN and shard ID
    # The following example returns a shard iterator for the provided stream ARN
    # and shard ID.
    my $GetShardIteratorOutput = $streams
      . dynamodb->GetShardIterator(
      {
        'ShardId'           => '00000001414576573621-f55eea83',
        'ShardIteratorType' => 'TRIM_HORIZON',
        'StreamArn' =>
'arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:10.252'
      }
      );

    # Results:
    my $ShardIterator = $GetShardIteratorOutput->ShardIterator;

    # Returns a L<Paws::DynamoDBStreams::GetShardIteratorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/streams.dynamodb/GetShardIterator>

=head1 ATTRIBUTES


=head2 SequenceNumber => Str

The sequence number of a stream record in the shard from which to start
reading.



=head2 B<REQUIRED> ShardId => Str

The identifier of the shard. The iterator will be returned for this
shard ID.



=head2 B<REQUIRED> ShardIteratorType => Str

Determines how the shard iterator is used to start reading stream
records from the shard:

=over

=item *

C<AT_SEQUENCE_NUMBER> - Start reading exactly from the position denoted
by a specific sequence number.

=item *

C<AFTER_SEQUENCE_NUMBER> - Start reading right after the position
denoted by a specific sequence number.

=item *

C<TRIM_HORIZON> - Start reading at the last (untrimmed) stream record,
which is the oldest record in the shard. In DynamoDB Streams, there is
a 24 hour limit on data retention. Stream records whose age exceeds
this limit are subject to removal (trimming) from the stream.

=item *

C<LATEST> - Start reading just after the most recent stream record in
the shard, so that you always read the most recent data in the shard.

=back


Valid values are: C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_SEQUENCE_NUMBER">, C<"AFTER_SEQUENCE_NUMBER">

=head2 B<REQUIRED> StreamArn => Str

The Amazon Resource Name (ARN) for the stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetShardIterator in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

