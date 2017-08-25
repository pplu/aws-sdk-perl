package Paws::Firehose;
  use Moose;
  sub service { 'firehose' }
  sub version { '2015-08-04' }
  sub target_prefix { 'Firehose_20150804' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::CreateDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::DeleteDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDeliveryStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::DescribeDeliveryStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKinesisStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::GetKinesisStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeliveryStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::ListDeliveryStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecord {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::PutRecord', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRecordBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::PutRecordBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDestination {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Firehose::UpdateDestination', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateDeliveryStream DeleteDeliveryStream DescribeDeliveryStream GetKinesisStream ListDeliveryStreams PutRecord PutRecordBatch UpdateDestination / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose - Perl Interface to AWS Amazon Kinesis Firehose

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Firehose');
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

Amazon Kinesis Firehose API Reference

Amazon Kinesis Firehose is a fully managed service that delivers
real-time streaming data to destinations such as Amazon Simple Storage
Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and
Amazon Redshift.

=head1 METHODS

=head2 CreateDeliveryStream(DeliveryStreamName => Str, [DeliveryStreamType => Str, ElasticsearchDestinationConfiguration => L<Paws::Firehose::ElasticsearchDestinationConfiguration>, ExtendedS3DestinationConfiguration => L<Paws::Firehose::ExtendedS3DestinationConfiguration>, KinesisStreamSourceConfiguration => L<Paws::Firehose::KinesisStreamSourceConfiguration>, RedshiftDestinationConfiguration => L<Paws::Firehose::RedshiftDestinationConfiguration>, S3DestinationConfiguration => L<Paws::Firehose::S3DestinationConfiguration>])

Each argument is described in detail in: L<Paws::Firehose::CreateDeliveryStream>

Returns: a L<Paws::Firehose::CreateDeliveryStreamOutput> instance

  Creates a delivery stream.

By default, you can create up to 20 delivery streams per region.

This is an asynchronous operation that immediately returns. The initial
status of the delivery stream is C<CREATING>. After the delivery stream
is created, its status is C<ACTIVE> and it now accepts data. Attempts
to send data to a delivery stream that is not in the C<ACTIVE> state
cause an exception. To check the state of a delivery stream, use
DescribeDeliveryStream.

A Kinesis Firehose delivery stream can be configured to receive records
directly from providers using PutRecord or PutRecordBatch, or it can be
configured to use an existing Kinesis stream as its source. To specify
a Kinesis stream as input, set the C<DeliveryStreamType> parameter to
C<KinesisStreamAsSource>, and provide the Kinesis stream ARN and role
ARN in the C<KinesisStreamSourceConfiguration> parameter.

A delivery stream is configured with a single destination: Amazon S3,
Amazon ES, or Amazon Redshift. You must specify only one of the
following destination configuration parameters:
B<ExtendedS3DestinationConfiguration>, B<S3DestinationConfiguration>,
B<ElasticsearchDestinationConfiguration>, or
B<RedshiftDestinationConfiguration>.

When you specify B<S3DestinationConfiguration>, you can also provide
the following optional values: B<BufferingHints>,
B<EncryptionConfiguration>, and B<CompressionFormat>. By default, if no
B<BufferingHints> value is provided, Kinesis Firehose buffers data up
to 5 MB or for 5 minutes, whichever condition is satisfied first. Note
that B<BufferingHints> is a hint, so there are some cases where the
service cannot adhere to these conditions strictly; for example, record
boundaries are such that the size is a little over or under the
configured buffering size. By default, no encryption is performed. We
strongly recommend that you enable encryption to ensure secure data
storage in Amazon S3.

A few notes about Amazon Redshift as a destination:

=over

=item *

An Amazon Redshift destination requires an S3 bucket as intermediate
location, as Kinesis Firehose first delivers data to S3 and then uses
C<COPY> syntax to load data into an Amazon Redshift table. This is
specified in the B<RedshiftDestinationConfiguration.S3Configuration>
parameter.

=item *

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
B<RedshiftDestinationConfiguration.S3Configuration> because the Amazon
Redshift C<COPY> operation that reads from the S3 bucket doesn't
support these compression formats.

=item *

We strongly recommend that you use the user name and password you
provide exclusively with Kinesis Firehose, and that the permissions for
the account are restricted for Amazon Redshift C<INSERT> permissions.

=back

Kinesis Firehose assumes the IAM role that is configured as part of the
destination. The role should allow the Kinesis Firehose principal to
assume the role, and the role should have permissions that allow the
service to deliver the data. For more information, see Amazon S3 Bucket
Access in the I<Amazon Kinesis Firehose Developer Guide>.


=head2 DeleteDeliveryStream(DeliveryStreamName => Str)

Each argument is described in detail in: L<Paws::Firehose::DeleteDeliveryStream>

Returns: a L<Paws::Firehose::DeleteDeliveryStreamOutput> instance

  Deletes a delivery stream and its data.

You can delete a delivery stream only if it is in C<ACTIVE> or
C<DELETING> state, and not in the C<CREATING> state. While the deletion
request is in process, the delivery stream is in the C<DELETING> state.

To check the state of a delivery stream, use DescribeDeliveryStream.

While the delivery stream is C<DELETING> state, the service may
continue to accept the records, but the service doesn't make any
guarantees with respect to delivering the data. Therefore, as a best
practice, you should first stop any applications that are sending
records before deleting a delivery stream.


=head2 DescribeDeliveryStream(DeliveryStreamName => Str, [ExclusiveStartDestinationId => Str, Limit => Int])

Each argument is described in detail in: L<Paws::Firehose::DescribeDeliveryStream>

Returns: a L<Paws::Firehose::DescribeDeliveryStreamOutput> instance

  Describes the specified delivery stream and gets the status. For
example, after your delivery stream is created, call
DescribeDeliveryStream to see if the delivery stream is C<ACTIVE> and
therefore ready for data to be sent to it.


=head2 GetKinesisStream(DeliveryStreamARN => Str)

Each argument is described in detail in: L<Paws::Firehose::GetKinesisStream>

Returns: a L<Paws::Firehose::GetKinesisStreamOutput> instance

  


=head2 ListDeliveryStreams([DeliveryStreamType => Str, ExclusiveStartDeliveryStreamName => Str, Limit => Int])

Each argument is described in detail in: L<Paws::Firehose::ListDeliveryStreams>

Returns: a L<Paws::Firehose::ListDeliveryStreamsOutput> instance

  Lists your delivery streams.

The number of delivery streams might be too large to return using a
single call to ListDeliveryStreams. You can limit the number of
delivery streams returned, using the B<Limit> parameter. To determine
whether there are more delivery streams to list, check the value of
B<HasMoreDeliveryStreams> in the output. If there are more delivery
streams to list, you can request them by specifying the name of the
last delivery stream returned in the call in the
B<ExclusiveStartDeliveryStreamName> parameter of a subsequent call.


=head2 PutRecord(DeliveryStreamName => Str, Record => L<Paws::Firehose::Record>)

Each argument is described in detail in: L<Paws::Firehose::PutRecord>

Returns: a L<Paws::Firehose::PutRecordOutput> instance

  Writes a single data record into an Amazon Kinesis Firehose delivery
stream. To write multiple data records into a delivery stream, use
PutRecordBatch. Applications using these operations are referred to as
producers.

By default, each delivery stream can take in up to 2,000 transactions
per second, 5,000 records per second, or 5 MB per second. Note that if
you use PutRecord and PutRecordBatch, the limits are an aggregate
across these two operations for each delivery stream. For more
information about limits and how to request an increase, see Amazon
Kinesis Firehose Limits.

You must specify the name of the delivery stream and the data record
when using PutRecord. The data record consists of a data blob that can
be up to 1,000 KB in size, and any kind of data, for example, a segment
from a log file, geographic location data, website clickstream data,
and so on.

Kinesis Firehose buffers records before delivering them to the
destination. To disambiguate the data blobs at the destination, a
common solution is to use delimiters in the data, such as a newline
(C<\n>) or some other character unique within the data. This allows the
consumer application to parse individual data items when reading the
data from the destination.

The PutRecord operation returns a B<RecordId>, which is a unique string
assigned to each record. Producer applications can use this ID for
purposes such as auditability and investigation.

If the PutRecord operation throws a B<ServiceUnavailableException>,
back off and retry. If the exception persists, it is possible that the
throughput limits have been exceeded for the delivery stream.

Data records sent to Kinesis Firehose are stored for 24 hours from the
time they are added to a delivery stream as it attempts to send the
records to the destination. If the destination is unreachable for more
than 24 hours, the data is no longer available.


=head2 PutRecordBatch(DeliveryStreamName => Str, Records => ArrayRef[L<Paws::Firehose::Record>])

Each argument is described in detail in: L<Paws::Firehose::PutRecordBatch>

Returns: a L<Paws::Firehose::PutRecordBatchOutput> instance

  Writes multiple data records into a delivery stream in a single call,
which can achieve higher throughput per producer than when writing
single records. To write single data records into a delivery stream,
use PutRecord. Applications using these operations are referred to as
producers.

By default, each delivery stream can take in up to 2,000 transactions
per second, 5,000 records per second, or 5 MB per second. If you use
PutRecord and PutRecordBatch, the limits are an aggregate across these
two operations for each delivery stream. For more information about
limits, see Amazon Kinesis Firehose Limits.

Each PutRecordBatch request supports up to 500 records. Each record in
the request can be as large as 1,000 KB (before 64-bit encoding), up to
a limit of 4 MB for the entire request. These limits cannot be changed.

You must specify the name of the delivery stream and the data record
when using PutRecord. The data record consists of a data blob that can
be up to 1,000 KB in size, and any kind of data. For example, it could
be a segment from a log file, geographic location data, web site
clickstream data, and so on.

Kinesis Firehose buffers records before delivering them to the
destination. To disambiguate the data blobs at the destination, a
common solution is to use delimiters in the data, such as a newline
(C<\n>) or some other character unique within the data. This allows the
consumer application to parse individual data items when reading the
data from the destination.

The PutRecordBatch response includes a count of failed records,
B<FailedPutCount>, and an array of responses, B<RequestResponses>. Each
entry in the B<RequestResponses> array provides additional information
about the processed record. It directly correlates with a record in the
request array using the same ordering, from the top to the bottom. The
response array always includes the same number of records as the
request array. B<RequestResponses> includes both successfully and
unsuccessfully processed records. Kinesis Firehose attempts to process
all records in each PutRecordBatch request. A single record failure
does not stop the processing of subsequent records.

A successfully processed record includes a B<RecordId> value, which is
unique for the record. An unsuccessfully processed record includes
B<ErrorCode> and B<ErrorMessage> values. B<ErrorCode> reflects the type
of error, and is one of the following values: C<ServiceUnavailable> or
C<InternalFailure>. B<ErrorMessage> provides more detailed information
about the error.

If there is an internal server error or a timeout, the write might have
completed or it might have failed. If B<FailedPutCount> is greater than
0, retry the request, resending only those records that might have
failed processing. This minimizes the possible duplicate records and
also reduces the total bytes sent (and corresponding charges). We
recommend that you handle any duplicates at the destination.

If PutRecordBatch throws B<ServiceUnavailableException>, back off and
retry. If the exception persists, it is possible that the throughput
limits have been exceeded for the delivery stream.

Data records sent to Kinesis Firehose are stored for 24 hours from the
time they are added to a delivery stream as it attempts to send the
records to the destination. If the destination is unreachable for more
than 24 hours, the data is no longer available.


=head2 UpdateDestination(CurrentDeliveryStreamVersionId => Str, DeliveryStreamName => Str, DestinationId => Str, [ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>, ExtendedS3DestinationUpdate => L<Paws::Firehose::ExtendedS3DestinationUpdate>, RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>, S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>])

Each argument is described in detail in: L<Paws::Firehose::UpdateDestination>

Returns: a L<Paws::Firehose::UpdateDestinationOutput> instance

  Updates the specified destination of the specified delivery stream.

You can use this operation to change the destination type (for example,
to replace the Amazon S3 destination with Amazon Redshift) or change
the parameters associated with a destination (for example, to change
the bucket name of the Amazon S3 destination). The update might not
occur immediately. The target delivery stream remains active while the
configurations are updated, so data writes to the delivery stream can
continue during this process. The updated configurations are usually
effective within a few minutes.

Note that switching between Amazon ES and other services is not
supported. For an Amazon ES destination, you can only update to another
Amazon ES destination.

If the destination type is the same, Kinesis Firehose merges the
configuration parameters specified with the destination configuration
that already exists on the delivery stream. If any of the parameters
are not specified in the call, the existing values are retained. For
example, in the Amazon S3 destination, if EncryptionConfiguration is
not specified, then the existing EncryptionConfiguration is maintained
on the destination.

If the destination type is not the same, for example, changing the
destination from Amazon S3 to Amazon Redshift, Kinesis Firehose does
not merge any parameters. In this case, all parameters must be
specified.

Kinesis Firehose uses B<CurrentDeliveryStreamVersionId> to avoid race
conditions and conflicting merges. This is a required field, and the
service updates the configuration only if the existing configuration
has a version ID that matches. After the update is applied
successfully, the version ID is updated, and can be retrieved using
DescribeDeliveryStream. Use the new version ID to set
B<CurrentDeliveryStreamVersionId> in the next call.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

