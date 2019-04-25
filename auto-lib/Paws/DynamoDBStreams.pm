package Paws::DynamoDBStreams;
  use Moose;
  sub service { 'streams.dynamodb' }
  sub signing_name { 'dynamodb' }
  sub version { '2012-08-10' }
  sub target_prefix { 'DynamoDBStreams_20120810' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDBStreams::DescribeStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDBStreams::GetRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShardIterator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDBStreams::GetShardIterator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DynamoDBStreams::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeStream GetRecords GetShardIterator ListStreams / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams - Perl Interface to AWS Amazon DynamoDB Streams

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DynamoDBStreams');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon DynamoDB

Amazon DynamoDB Streams provides API actions for accessing streams and
processing stream records. To learn more about application development
with Streams, see Capturing Table Activity with DynamoDB Streams
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
in the Amazon DynamoDB Developer Guide.

For the AWS API documentation, see L<https://docs.aws.amazon.com/dynamodb/>


=head1 METHODS

=head2 DescribeStream

=over

=item StreamArn => Str

=item [ExclusiveStartShardId => Str]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::DynamoDBStreams::DescribeStream>

Returns: a L<Paws::DynamoDBStreams::DescribeStreamOutput> instance

Returns information about a stream, including the current status of the
stream, its Amazon Resource Name (ARN), the composition of its shards,
and its corresponding DynamoDB table.

You can call C<DescribeStream> at a maximum rate of 10 times per
second.

Each shard in the stream has a C<SequenceNumberRange> associated with
it. If the C<SequenceNumberRange> has a C<StartingSequenceNumber> but
no C<EndingSequenceNumber>, then the shard is still open (able to
receive more stream records). If both C<StartingSequenceNumber> and
C<EndingSequenceNumber> are present, then that shard is closed and can
no longer receive more data.


=head2 GetRecords

=over

=item ShardIterator => Str

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::DynamoDBStreams::GetRecords>

Returns: a L<Paws::DynamoDBStreams::GetRecordsOutput> instance

Retrieves the stream records from a given shard.

Specify a shard iterator using the C<ShardIterator> parameter. The
shard iterator specifies the position in the shard from which you want
to start reading stream records sequentially. If there are no stream
records available in the portion of the shard that the iterator points
to, C<GetRecords> returns an empty list. Note that it might take
multiple calls to get to a portion of the shard that contains stream
records.

C<GetRecords> can retrieve a maximum of 1 MB of data or 1000 stream
records, whichever comes first.


=head2 GetShardIterator

=over

=item ShardId => Str

=item ShardIteratorType => Str

=item StreamArn => Str

=item [SequenceNumber => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDBStreams::GetShardIterator>

Returns: a L<Paws::DynamoDBStreams::GetShardIteratorOutput> instance

Returns a shard iterator. A shard iterator provides information about
how to retrieve the stream records from within a shard. Use the shard
iterator in a subsequent C<GetRecords> request to read the stream
records from the shard.

A shard iterator expires 15 minutes after it is returned to the
requester.


=head2 ListStreams

=over

=item [ExclusiveStartStreamArn => Str]

=item [Limit => Int]

=item [TableName => Str]


=back

Each argument is described in detail in: L<Paws::DynamoDBStreams::ListStreams>

Returns: a L<Paws::DynamoDBStreams::ListStreamsOutput> instance

Returns an array of stream ARNs associated with the current account and
endpoint. If the C<TableName> parameter is present, then C<ListStreams>
will return only the streams ARNs for that table.

You can call C<ListStreams> at a maximum rate of 5 times per second.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

