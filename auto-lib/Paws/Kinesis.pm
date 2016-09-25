package Paws::Kinesis;
  use Moose;
  sub service { 'kinesis' }
  sub version { '2013-12-02' }
  sub target_prefix { 'Kinesis_20131202' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddTagsToStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::AddTagsToStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::CreateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecreaseStreamRetentionPeriod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DecreaseStreamRetentionPeriod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DeleteStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DescribeStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableEnhancedMonitoring {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::DisableEnhancedMonitoring', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableEnhancedMonitoring {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::EnableEnhancedMonitoring', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::GetRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetShardIterator {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::GetShardIterator', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IncreaseStreamRetentionPeriod {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::IncreaseStreamRetentionPeriod', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::ListTagsForStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MergeShards {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::MergeShards', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecords {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::PutRecords', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::RemoveTagsFromStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SplitShard {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kinesis::SplitShard', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/AddTagsToStream CreateStream DecreaseStreamRetentionPeriod DeleteStream DescribeStream DisableEnhancedMonitoring EnableEnhancedMonitoring GetRecords GetShardIterator IncreaseStreamRetentionPeriod ListStreams ListTagsForStream MergeShards PutRecord PutRecords RemoveTagsFromStream SplitShard / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis - Perl Interface to AWS Amazon Kinesis

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kinesis');
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

Amazon Kinesis Streams Service API Reference

Amazon Kinesis Streams is a managed service that scales elastically for
real time processing of streaming big data.

=head1 METHODS

=head2 AddTagsToStream(StreamName => Str, Tags => L<Paws::Kinesis::TagMap>)

Each argument is described in detail in: L<Paws::Kinesis::AddTagsToStream>

Returns: nothing

  Adds or updates tags for the specified Amazon Kinesis stream. Each
stream can have up to 10 tags.

If tags have already been assigned to the stream, C<AddTagsToStream>
overwrites any existing tags that correspond to the specified tag keys.


=head2 CreateStream(ShardCount => Int, StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::CreateStream>

Returns: nothing

  Creates an Amazon Kinesis stream. A stream captures and transports data
records that are continuously emitted from different data sources or
I<producers>. Scale-out within a stream is explicitly supported by
means of shards, which are uniquely identified groups of data records
in a stream.

You specify and control the number of shards that a stream is composed
of. Each shard can support reads up to 5 transactions per second, up to
a maximum data read total of 2 MB per second. Each shard can support
writes up to 1,000 records per second, up to a maximum data write total
of 1 MB per second. You can add shards to a stream if the amount of
data input increases and you can remove shards if the amount of data
input decreases.

The stream name identifies the stream. The name is scoped to the AWS
account used by the application. It is also scoped by region. That is,
two streams in two different accounts can have the same name, and two
streams in the same account, but in two different regions, can have the
same name.

C<CreateStream> is an asynchronous operation. Upon receiving a
C<CreateStream> request, Amazon Kinesis immediately returns and sets
the stream status to C<CREATING>. After the stream is created, Amazon
Kinesis sets the stream status to C<ACTIVE>. You should perform read
and write operations only on an C<ACTIVE> stream.

You receive a C<LimitExceededException> when making a C<CreateStream>
request if you try to do one of the following:

=over

=item * Have more than five streams in the C<CREATING> state at any
point in time.

=item * Create more shards than are authorized for your account.

=back

For the default shard limit for an AWS account, see Streams Limits in
the I<Amazon Kinesis Streams Developer Guide>. If you need to increase
this limit, contact AWS Support.

You can use C<DescribeStream> to check the stream status, which is
returned in C<StreamStatus>.

CreateStream has a limit of 5 transactions per second per account.


=head2 DecreaseStreamRetentionPeriod(RetentionPeriodHours => Int, StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::DecreaseStreamRetentionPeriod>

Returns: nothing

  Decreases the Amazon Kinesis stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The minimum value of a stream's retention period is 24 hours.

This operation may result in lost data. For example, if the stream's
retention period is 48 hours and is decreased to 24 hours, any data
already in the stream that is older than 24 hours is inaccessible.


=head2 DeleteStream(StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::DeleteStream>

Returns: nothing

  Deletes an Amazon Kinesis stream and all its shards and data. You must
shut down any applications that are operating on the stream before you
delete the stream. If an application attempts to operate on a deleted
stream, it will receive the exception C<ResourceNotFoundException>.

If the stream is in the C<ACTIVE> state, you can delete it. After a
C<DeleteStream> request, the specified stream is in the C<DELETING>
state until Amazon Kinesis completes the deletion.

B<Note:> Amazon Kinesis might continue to accept data read and write
operations, such as PutRecord, PutRecords, and GetRecords, on a stream
in the C<DELETING> state until the stream deletion is complete.

When you delete a stream, any shards in that stream are also deleted,
and any tags are dissociated from the stream.

You can use the DescribeStream operation to check the state of the
stream, which is returned in C<StreamStatus>.

DeleteStream has a limit of 5 transactions per second per account.


=head2 DescribeStream(StreamName => Str, [ExclusiveStartShardId => Str, Limit => Int])

Each argument is described in detail in: L<Paws::Kinesis::DescribeStream>

Returns: a L<Paws::Kinesis::DescribeStreamOutput> instance

  Describes the specified Amazon Kinesis stream.

The information about the stream includes its current status, its
Amazon Resource Name (ARN), and an array of shard objects. For each
shard object, there is information about the hash key and sequence
number ranges that the shard spans, and the IDs of any earlier shards
that played in a role in creating the shard. A sequence number is the
identifier associated with every record ingested in the stream. The
sequence number is assigned when a record is put into the stream.

You can limit the number of returned shards using the C<Limit>
parameter. The number of shards in a stream may be too large to return
from a single call to C<DescribeStream>. You can detect this by using
the C<HasMoreShards> flag in the returned output. C<HasMoreShards> is
set to C<true> when there is more data available.

C<DescribeStream> is a paginated operation. If there are more shards
available, you can request them using the shard ID of the last shard
returned. Specify this ID in the C<ExclusiveStartShardId> parameter in
a subsequent request to C<DescribeStream>.

There are no guarantees about the chronological order shards returned
in C<DescribeStream> results. If you want to process shards in
chronological order, use C<ParentShardId> to track lineage to the
oldest shard.

DescribeStream has a limit of 10 transactions per second per account.


=head2 DisableEnhancedMonitoring(ShardLevelMetrics => ArrayRef[Str|Undef], StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::DisableEnhancedMonitoring>

Returns: a L<Paws::Kinesis::EnhancedMonitoringOutput> instance

  Disables enhanced monitoring.


=head2 EnableEnhancedMonitoring(ShardLevelMetrics => ArrayRef[Str|Undef], StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::EnableEnhancedMonitoring>

Returns: a L<Paws::Kinesis::EnhancedMonitoringOutput> instance

  Enables enhanced Amazon Kinesis stream monitoring for shard-level
metrics.


=head2 GetRecords(ShardIterator => Str, [Limit => Int])

Each argument is described in detail in: L<Paws::Kinesis::GetRecords>

Returns: a L<Paws::Kinesis::GetRecordsOutput> instance

  Gets data records from an Amazon Kinesis stream's shard.

Specify a shard iterator using the C<ShardIterator> parameter. The
shard iterator specifies the position in the shard from which you want
to start reading data records sequentially. If there are no records
available in the portion of the shard that the iterator points to,
GetRecords returns an empty list. Note that it might take multiple
calls to get to a portion of the shard that contains records.

You can scale by provisioning multiple shards per stream while
considering service limits (for more information, see Streams Limits in
the I<Amazon Kinesis Streams Developer Guide>). Your application should
have one thread per shard, each reading continuously from its stream.
To read from a stream continually, call GetRecords in a loop. Use
GetShardIterator to get the shard iterator to specify in the first
GetRecords call. GetRecords returns a new shard iterator in
C<NextShardIterator>. Specify the shard iterator returned in
C<NextShardIterator> in subsequent calls to GetRecords. Note that if
the shard has been closed, the shard iterator can't return more data
and GetRecords returns C<null> in C<NextShardIterator>. You can
terminate the loop when the shard is closed, or when the shard iterator
reaches the record with the sequence number or other attribute that
marks it as the last record to process.

Each data record can be up to 1 MB in size, and each shard can read up
to 2 MB per second. You can ensure that your calls don't exceed the
maximum supported size or throughput by using the C<Limit> parameter to
specify the maximum number of records that GetRecords can return.
Consider your average record size when determining this limit.

The size of the data returned by GetRecords varies depending on the
utilization of the shard. The maximum size of data that GetRecords can
return is 10 MB. If a call returns this amount of data, subsequent
calls made within the next 5 seconds throw
C<ProvisionedThroughputExceededException>. If there is insufficient
provisioned throughput on the shard, subsequent calls made within the
next 1 second throw C<ProvisionedThroughputExceededException>. Note
that GetRecords won't return any data when it throws an exception. For
this reason, we recommend that you wait one second between calls to
GetRecords; however, it's possible that the application will get
exceptions for longer than 1 second.

To detect whether the application is falling behind in processing, you
can use the C<MillisBehindLatest> response attribute. You can also
monitor the stream using CloudWatch metrics and other mechanisms (see
Monitoring in the I<Amazon Kinesis Streams Developer Guide>).

Each Amazon Kinesis record includes a value,
C<ApproximateArrivalTimestamp>, that is set when a stream successfully
receives and stores a record. This is commonly referred to as a
server-side timestamp, whereas a client-side timestamp is set when a
data producer creates or sends the record to a stream (a data producer
is any data source putting data records into a stream, for example with
PutRecords). The timestamp has millisecond precision. There are no
guarantees about the timestamp accuracy, or that the timestamp is
always increasing. For example, records in a shard or across a stream
might have timestamps that are out of order.


=head2 GetShardIterator(ShardId => Str, ShardIteratorType => Str, StreamName => Str, [StartingSequenceNumber => Str, Timestamp => Str])

Each argument is described in detail in: L<Paws::Kinesis::GetShardIterator>

Returns: a L<Paws::Kinesis::GetShardIteratorOutput> instance

  Gets an Amazon Kinesis shard iterator. A shard iterator expires five
minutes after it is returned to the requester.

A shard iterator specifies the shard position from which to start
reading data records sequentially. The position is specified using the
sequence number of a data record in a shard. A sequence number is the
identifier associated with every record ingested in the stream, and is
assigned when a record is put into the stream. Each stream has one or
more shards.

You must specify the shard iterator type. For example, you can set the
C<ShardIteratorType> parameter to read exactly from the position
denoted by a specific sequence number by using the
C<AT_SEQUENCE_NUMBER> shard iterator type, or right after the sequence
number by using the C<AFTER_SEQUENCE_NUMBER> shard iterator type, using
sequence numbers returned by earlier calls to PutRecord, PutRecords,
GetRecords, or DescribeStream. In the request, you can specify the
shard iterator type C<AT_TIMESTAMP> to read records from an arbitrary
point in time, C<TRIM_HORIZON> to cause C<ShardIterator> to point to
the last untrimmed record in the shard in the system (the oldest data
record in the shard), or C<LATEST> so that you always read the most
recent data in the shard.

When you read repeatedly from a stream, use a GetShardIterator request
to get the first shard iterator for use in your first GetRecords
request and for subsequent reads use the shard iterator returned by the
GetRecords request in C<NextShardIterator>. A new shard iterator is
returned by every GetRecords request in C<NextShardIterator>, which you
use in the C<ShardIterator> parameter of the next GetRecords request.

If a GetShardIterator request is made too often, you receive a
C<ProvisionedThroughputExceededException>. For more information about
throughput limits, see GetRecords, and Streams Limits in the I<Amazon
Kinesis Streams Developer Guide>.

If the shard is closed, GetShardIterator returns a valid iterator for
the last sequence number of the shard. Note that a shard can be closed
as a result of using SplitShard or MergeShards.

GetShardIterator has a limit of 5 transactions per second per account
per open shard.


=head2 IncreaseStreamRetentionPeriod(RetentionPeriodHours => Int, StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::IncreaseStreamRetentionPeriod>

Returns: nothing

  Increases the Amazon Kinesis stream's retention period, which is the
length of time data records are accessible after they are added to the
stream. The maximum value of a stream's retention period is 168 hours
(7 days).

Upon choosing a longer stream retention period, this operation will
increase the time period records are accessible that have not yet
expired. However, it will not make previous data that has expired
(older than the stream's previous retention period) accessible after
the operation has been called. For example, if a stream's retention
period is set to 24 hours and is increased to 168 hours, any data that
is older than 24 hours will remain inaccessible to consumer
applications.


=head2 ListStreams([ExclusiveStartStreamName => Str, Limit => Int])

Each argument is described in detail in: L<Paws::Kinesis::ListStreams>

Returns: a L<Paws::Kinesis::ListStreamsOutput> instance

  Lists your Amazon Kinesis streams.

The number of streams may be too large to return from a single call to
C<ListStreams>. You can limit the number of returned streams using the
C<Limit> parameter. If you do not specify a value for the C<Limit>
parameter, Amazon Kinesis uses the default limit, which is currently
10.

You can detect if there are more streams available to list by using the
C<HasMoreStreams> flag from the returned output. If there are more
streams available, you can request more streams by using the name of
the last stream returned by the C<ListStreams> request in the
C<ExclusiveStartStreamName> parameter in a subsequent request to
C<ListStreams>. The group of stream names returned by the subsequent
request is then added to the list. You can continue this process until
all the stream names have been collected in the list.

ListStreams has a limit of 5 transactions per second per account.


=head2 ListTagsForStream(StreamName => Str, [ExclusiveStartTagKey => Str, Limit => Int])

Each argument is described in detail in: L<Paws::Kinesis::ListTagsForStream>

Returns: a L<Paws::Kinesis::ListTagsForStreamOutput> instance

  Lists the tags for the specified Amazon Kinesis stream.


=head2 MergeShards(AdjacentShardToMerge => Str, ShardToMerge => Str, StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::MergeShards>

Returns: nothing

  Merges two adjacent shards in an Amazon Kinesis stream and combines
them into a single shard to reduce the stream's capacity to ingest and
transport data. Two shards are considered adjacent if the union of the
hash key ranges for the two shards form a contiguous set with no gaps.
For example, if you have two shards, one with a hash key range of
276...381 and the other with a hash key range of 382...454, then you
could merge these two shards into a single shard that would have a hash
key range of 276...454. After the merge, the single child shard
receives data for all hash key values covered by the two parent shards.

C<MergeShards> is called when there is a need to reduce the overall
capacity of a stream because of excess capacity that is not being used.
You must specify the shard to be merged and the adjacent shard for a
stream. For more information about merging shards, see Merge Two Shards
in the I<Amazon Kinesis Streams Developer Guide>.

If the stream is in the C<ACTIVE> state, you can call C<MergeShards>.
If a stream is in the C<CREATING>, C<UPDATING>, or C<DELETING> state,
C<MergeShards> returns a C<ResourceInUseException>. If the specified
stream does not exist, C<MergeShards> returns a
C<ResourceNotFoundException>.

You can use DescribeStream to check the state of the stream, which is
returned in C<StreamStatus>.

C<MergeShards> is an asynchronous operation. Upon receiving a
C<MergeShards> request, Amazon Kinesis immediately returns a response
and sets the C<StreamStatus> to C<UPDATING>. After the operation is
completed, Amazon Kinesis sets the C<StreamStatus> to C<ACTIVE>. Read
and write operations continue to work while the stream is in the
C<UPDATING> state.

You use DescribeStream to determine the shard IDs that are specified in
the C<MergeShards> request.

If you try to operate on too many streams in parallel using
CreateStream, DeleteStream, C<MergeShards> or SplitShard, you will
receive a C<LimitExceededException>.

C<MergeShards> has limit of 5 transactions per second per account.


=head2 PutRecord(Data => Str, PartitionKey => Str, StreamName => Str, [ExplicitHashKey => Str, SequenceNumberForOrdering => Str])

Each argument is described in detail in: L<Paws::Kinesis::PutRecord>

Returns: a L<Paws::Kinesis::PutRecordOutput> instance

  Writes a single data record into an Amazon Kinesis stream. Call
C<PutRecord> to send data into the stream for real-time ingestion and
subsequent processing, one record at a time. Each shard can support
writes up to 1,000 records per second, up to a maximum data write total
of 1 MB per second.

You must specify the name of the stream that captures, stores, and
transports the data; a partition key; and the data blob itself.

The data blob can be any type of data; for example, a segment from a
log file, geographic/location data, website clickstream data, and so
on.

The partition key is used by Amazon Kinesis to distribute data across
shards. Amazon Kinesis segregates the data records that belong to a
stream into multiple shards, using the partition key associated with
each data record to determine which shard a given data record belongs
to.

Partition keys are Unicode strings, with a maximum length limit of 256
characters for each key. An MD5 hash function is used to map partition
keys to 128-bit integer values and to map associated data records to
shards using the hash key ranges of the shards. You can override
hashing the partition key to determine the shard by explicitly
specifying a hash value using the C<ExplicitHashKey> parameter. For
more information, see Adding Data to a Stream in the I<Amazon Kinesis
Streams Developer Guide>.

C<PutRecord> returns the shard ID of where the data record was placed
and the sequence number that was assigned to the data record.

Sequence numbers increase over time and are specific to a shard within
a stream, not across all shards within a stream. To guarantee strictly
increasing ordering, write serially to a shard and use the
C<SequenceNumberForOrdering> parameter. For more information, see
Adding Data to a Stream in the I<Amazon Kinesis Streams Developer
Guide>.

If a C<PutRecord> request cannot be processed because of insufficient
provisioned throughput on the shard involved in the request,
C<PutRecord> throws C<ProvisionedThroughputExceededException>.

Data records are accessible for only 24 hours from the time that they
are added to a stream.


=head2 PutRecords(Records => ArrayRef[L<Paws::Kinesis::PutRecordsRequestEntry>], StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::PutRecords>

Returns: a L<Paws::Kinesis::PutRecordsOutput> instance

  Writes multiple data records into an Amazon Kinesis stream in a single
call (also referred to as a C<PutRecords> request). Use this operation
to send data into the stream for data ingestion and processing.

Each C<PutRecords> request can support up to 500 records. Each record
in the request can be as large as 1 MB, up to a limit of 5 MB for the
entire request, including partition keys. Each shard can support writes
up to 1,000 records per second, up to a maximum data write total of 1
MB per second.

You must specify the name of the stream that captures, stores, and
transports the data; and an array of request C<Records>, with each
record in the array requiring a partition key and data blob. The record
size limit applies to the total size of the partition key and data
blob.

The data blob can be any type of data; for example, a segment from a
log file, geographic/location data, website clickstream data, and so
on.

The partition key is used by Amazon Kinesis as input to a hash function
that maps the partition key and associated data to a specific shard. An
MD5 hash function is used to map partition keys to 128-bit integer
values and to map associated data records to shards. As a result of
this hashing mechanism, all data records with the same partition key
map to the same shard within the stream. For more information, see
Adding Data to a Stream in the I<Amazon Kinesis Streams Developer
Guide>.

Each record in the C<Records> array may include an optional parameter,
C<ExplicitHashKey>, which overrides the partition key to shard mapping.
This parameter allows a data producer to determine explicitly the shard
where the record is stored. For more information, see Adding Multiple
Records with PutRecords in the I<Amazon Kinesis Streams Developer
Guide>.

The C<PutRecords> response includes an array of response C<Records>.
Each record in the response array directly correlates with a record in
the request array using natural ordering, from the top to the bottom of
the request and response. The response C<Records> array always includes
the same number of records as the request array.

The response C<Records> array includes both successfully and
unsuccessfully processed records. Amazon Kinesis attempts to process
all records in each C<PutRecords> request. A single record failure does
not stop the processing of subsequent records.

A successfully-processed record includes C<ShardId> and
C<SequenceNumber> values. The C<ShardId> parameter identifies the shard
in the stream where the record is stored. The C<SequenceNumber>
parameter is an identifier assigned to the put record, unique to all
records in the stream.

An unsuccessfully-processed record includes C<ErrorCode> and
C<ErrorMessage> values. C<ErrorCode> reflects the type of error and can
be one of the following values:
C<ProvisionedThroughputExceededException> or C<InternalFailure>.
C<ErrorMessage> provides more detailed information about the
C<ProvisionedThroughputExceededException> exception including the
account ID, stream name, and shard ID of the record that was throttled.
For more information about partially successful responses, see Adding
Multiple Records with PutRecords in the I<Amazon Kinesis Streams
Developer Guide>.

By default, data records are accessible for only 24 hours from the time
that they are added to an Amazon Kinesis stream. This retention period
can be modified using the DecreaseStreamRetentionPeriod and
IncreaseStreamRetentionPeriod operations.


=head2 RemoveTagsFromStream(StreamName => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Kinesis::RemoveTagsFromStream>

Returns: nothing

  Removes tags from the specified Amazon Kinesis stream. Removed tags are
deleted and cannot be recovered after this operation successfully
completes.

If you specify a tag that does not exist, it is ignored.


=head2 SplitShard(NewStartingHashKey => Str, ShardToSplit => Str, StreamName => Str)

Each argument is described in detail in: L<Paws::Kinesis::SplitShard>

Returns: nothing

  Splits a shard into two new shards in the Amazon Kinesis stream to
increase the stream's capacity to ingest and transport data.
C<SplitShard> is called when there is a need to increase the overall
capacity of a stream because of an expected increase in the volume of
data records being ingested.

You can also use C<SplitShard> when a shard appears to be approaching
its maximum utilization; for example, the producers sending data into
the specific shard are suddenly sending more than previously
anticipated. You can also call C<SplitShard> to increase stream
capacity, so that more Amazon Kinesis applications can simultaneously
read data from the stream for real-time processing.

You must specify the shard to be split and the new hash key, which is
the position in the shard where the shard gets split in two. In many
cases, the new hash key might simply be the average of the beginning
and ending hash key, but it can be any hash key value in the range
being mapped into the shard. For more information about splitting
shards, see Split a Shard in the I<Amazon Kinesis Streams Developer
Guide>.

You can use DescribeStream to determine the shard ID and hash key
values for the C<ShardToSplit> and C<NewStartingHashKey> parameters
that are specified in the C<SplitShard> request.

C<SplitShard> is an asynchronous operation. Upon receiving a
C<SplitShard> request, Amazon Kinesis immediately returns a response
and sets the stream status to C<UPDATING>. After the operation is
completed, Amazon Kinesis sets the stream status to C<ACTIVE>. Read and
write operations continue to work while the stream is in the
C<UPDATING> state.

You can use C<DescribeStream> to check the status of the stream, which
is returned in C<StreamStatus>. If the stream is in the C<ACTIVE>
state, you can call C<SplitShard>. If a stream is in C<CREATING> or
C<UPDATING> or C<DELETING> states, C<DescribeStream> returns a
C<ResourceInUseException>.

If the specified stream does not exist, C<DescribeStream> returns a
C<ResourceNotFoundException>. If you try to create more shards than are
authorized for your account, you receive a C<LimitExceededException>.

For the default shard limit for an AWS account, see Streams Limits in
the I<Amazon Kinesis Streams Developer Guide>. If you need to increase
this limit, contact AWS Support.

If you try to operate on too many streams simultaneously using
CreateStream, DeleteStream, MergeShards, and/or SplitShard, you receive
a C<LimitExceededException>.

C<SplitShard> has limit of 5 transactions per second per account.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

