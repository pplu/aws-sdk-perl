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
  


  sub operations { qw/CreateDeliveryStream DeleteDeliveryStream DescribeDeliveryStream ListDeliveryStreams PutRecord PutRecordBatch UpdateDestination / }

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

Amazon Kinesis Firehose is a fully-managed service that delivers
real-time streaming data to destinations such as Amazon Simple Storage
Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), and
Amazon Redshift.

=head1 METHODS

=head2 CreateDeliveryStream(DeliveryStreamName => Str, [ElasticsearchDestinationConfiguration => L<Paws::Firehose::ElasticsearchDestinationConfiguration>, RedshiftDestinationConfiguration => L<Paws::Firehose::RedshiftDestinationConfiguration>, S3DestinationConfiguration => L<Paws::Firehose::S3DestinationConfiguration>])

Each argument is described in detail in: L<Paws::Firehose::CreateDeliveryStream>

Returns: a L<Paws::Firehose::CreateDeliveryStreamOutput> instance

  Creates a delivery stream.

CreateDeliveryStream is an asynchronous operation that immediately
returns. The initial status of the delivery stream is C<CREATING>.
After the delivery stream is created, its status is C<ACTIVE> and it
now accepts data. Attempts to send data to a delivery stream that is
not in the C<ACTIVE> state cause an exception. To check the state of a
delivery stream, use DescribeDeliveryStream.

The name of a delivery stream identifies it. You can't have two
delivery streams with the same name in the same region. Two delivery
streams in different AWS accounts or different regions in the same AWS
account can have the same name.

By default, you can create up to 20 delivery streams per region.

A delivery stream can only be configured with a single destination,
Amazon S3, Amazon Elasticsearch Service, or Amazon Redshift. For
correct CreateDeliveryStream request syntax, specify only one
destination configuration parameter: either
B<S3DestinationConfiguration>,
B<ElasticsearchDestinationConfiguration>, or
B<RedshiftDestinationConfiguration>.

As part of B<S3DestinationConfiguration>, optional values
B<BufferingHints>, B<EncryptionConfiguration>, and B<CompressionFormat>
can be provided. By default, if no B<BufferingHints> value is provided,
Firehose buffers data up to 5 MB or for 5 minutes, whichever condition
is satisfied first. Note that B<BufferingHints> is a hint, so there are
some cases where the service cannot adhere to these conditions
strictly; for example, record boundaries are such that the size is a
little over or under the configured buffering size. By default, no
encryption is performed. We strongly recommend that you enable
encryption to ensure secure data storage in Amazon S3.

A few notes about B<RedshiftDestinationConfiguration>:

=over

=item *

An Amazon Redshift destination requires an S3 bucket as intermediate
location, as Firehose first delivers data to S3 and then uses C<COPY>
syntax to load data into an Amazon Redshift table. This is specified in
the B<RedshiftDestinationConfiguration.S3Configuration> parameter
element.

=item *

The compression formats C<SNAPPY> or C<ZIP> cannot be specified in
B<RedshiftDestinationConfiguration.S3Configuration> because the Amazon
Redshift C<COPY> operation that reads from the S3 bucket doesn't
support these compression formats.

=item *

We strongly recommend that the username and password provided is used
exclusively for Firehose purposes, and that the permissions for the
account are restricted for Amazon Redshift C<INSERT> permissions.

=back

Firehose assumes the IAM role that is configured as part of
destinations. The IAM role should allow the Firehose principal to
assume the role, and the role should have permissions that allows the
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


=head2 ListDeliveryStreams([ExclusiveStartDeliveryStreamName => Str, Limit => Int])

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
from a log file, geographic location data, web site clickstream data,
etc.

Firehose buffers records before delivering them to the destination. To
disambiguate the data blobs at the destination, a common solution is to
use delimiters in the data, such as a newline (C<\n>) or some other
character unique within the data. This allows the consumer
application(s) to parse individual data items when reading the data
from the destination.

The PutRecord operation returns a B<RecordId>, which is a unique string
assigned to each record. Producer applications can use this ID for
purposes such as auditability and investigation.

If the PutRecord operation throws a B<ServiceUnavailableException>,
back off and retry. If the exception persists, it is possible that the
throughput limits have been exceeded for the delivery stream.

Data records sent to Firehose are stored for 24 hours from the time
they are added to a delivery stream as it attempts to send the records
to the destination. If the destination is unreachable for more than 24
hours, the data is no longer available.


=head2 PutRecordBatch(DeliveryStreamName => Str, Records => ArrayRef[L<Paws::Firehose::Record>])

Each argument is described in detail in: L<Paws::Firehose::PutRecordBatch>

Returns: a L<Paws::Firehose::PutRecordBatchOutput> instance

  Writes multiple data records into a delivery stream in a single call,
which can achieve higher throughput per producer than when writing
single records. To write single data records into a delivery stream,
use PutRecord. Applications using these operations are referred to as
producers.

Each PutRecordBatch request supports up to 500 records. Each record in
the request can be as large as 1,000 KB (before 64-bit encoding), up to
a limit of 4 MB for the entire request. By default, each delivery
stream can take in up to 2,000 transactions per second, 5,000 records
per second, or 5 MB per second. Note that if you use PutRecord and
PutRecordBatch, the limits are an aggregate across these two operations
for each delivery stream. For more information about limits and how to
request an increase, see Amazon Kinesis Firehose Limits.

You must specify the name of the delivery stream and the data record
when using PutRecord. The data record consists of a data blob that can
be up to 1,000 KB in size, and any kind of data, for example, a segment
from a log file, geographic location data, web site clickstream data,
and so on.

Firehose buffers records before delivering them to the destination. To
disambiguate the data blobs at the destination, a common solution is to
use delimiters in the data, such as a newline (C<\n>) or some other
character unique within the data. This allows the consumer
application(s) to parse individual data items when reading the data
from the destination.

The PutRecordBatch response includes a count of any failed records,
B<FailedPutCount>, and an array of responses, B<RequestResponses>. The
B<FailedPutCount> value is a count of records that failed. Each entry
in the B<RequestResponses> array gives additional information of the
processed record. Each entry in B<RequestResponses> directly correlates
with a record in the request array using the same ordering, from the
top to the bottom of the request and response. B<RequestResponses>
always includes the same number of records as the request array.
B<RequestResponses> both successfully and unsuccessfully processed
records. Firehose attempts to process all records in each
PutRecordBatch request. A single record failure does not stop the
processing of subsequent records.

A successfully processed record includes a B<RecordId> value, which is
a unique value identified for the record. An unsuccessfully processed
record includes B<ErrorCode> and B<ErrorMessage> values. B<ErrorCode>
reflects the type of error and is one of the following values:
C<ServiceUnavailable> or C<InternalFailure>. C<ErrorMessage> provides
more detailed information about the error.

If B<FailedPutCount> is greater than 0 (zero), retry the request. A
retry of the entire batch of records is possible; however, we strongly
recommend that you inspect the entire response and resend only those
records that failed processing. This minimizes duplicate records and
also reduces the total bytes sent (and corresponding charges).

If the PutRecordBatch operation throws a
B<ServiceUnavailableException>, back off and retry. If the exception
persists, it is possible that the throughput limits have been exceeded
for the delivery stream.

Data records sent to Firehose are stored for 24 hours from the time
they are added to a delivery stream as it attempts to send the records
to the destination. If the destination is unreachable for more than 24
hours, the data is no longer available.


=head2 UpdateDestination(CurrentDeliveryStreamVersionId => Str, DeliveryStreamName => Str, DestinationId => Str, [ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>, RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>, S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>])

Each argument is described in detail in: L<Paws::Firehose::UpdateDestination>

Returns: a L<Paws::Firehose::UpdateDestinationOutput> instance

  Updates the specified destination of the specified delivery stream.
Note: Switching between Elasticsearch and other services is not
supported. For Elasticsearch destination, you can only update an
existing Elasticsearch destination with this operation.

This operation can be used to change the destination type (for example,
to replace the Amazon S3 destination with Amazon Redshift) or change
the parameters associated with a given destination (for example, to
change the bucket name of the Amazon S3 destination). The update may
not occur immediately. The target delivery stream remains active while
the configurations are updated, so data writes to the delivery stream
can continue during this process. The updated configurations are
normally effective within a few minutes.

If the destination type is the same, Firehose merges the configuration
parameters specified in the UpdateDestination request with the
destination configuration that already exists on the delivery stream.
If any of the parameters are not specified in the update request, then
the existing configuration parameters are retained. For example, in the
Amazon S3 destination, if EncryptionConfiguration is not specified then
the existing EncryptionConfiguration is maintained on the destination.

If the destination type is not the same, for example, changing the
destination from Amazon S3 to Amazon Redshift, Firehose does not merge
any parameters. In this case, all parameters must be specified.

Firehose uses the B<CurrentDeliveryStreamVersionId> to avoid race
conditions and conflicting merges. This is a required field in every
request and the service only updates the configuration if the existing
configuration matches the B<VersionId>. After the update is applied
successfully, the B<VersionId> is updated, which can be retrieved with
the DescribeDeliveryStream operation. The new B<VersionId> should be
uses to set B<CurrentDeliveryStreamVersionId> in the next
UpdateDestination operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

