
package Paws::Lambda::EventSourceMappingConfiguration;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has FunctionResponseTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastProcessingResult => (is => 'ro', isa => 'Str');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');
  has Queues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SelfManagedEventSource => (is => 'ro', isa => 'Paws::Lambda::SelfManagedEventSource');
  has SourceAccessConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::SourceAccessConfiguration]');
  has StartingPosition => (is => 'ro', isa => 'Str');
  has StartingPositionTimestamp => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateTransitionReason => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TumblingWindowInSeconds => (is => 'ro', isa => 'Int');
  has UUID => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::EventSourceMappingConfiguration

=head1 ATTRIBUTES


=head2 BatchSize => Int

The maximum number of items to retrieve in a single batch.


=head2 BisectBatchOnFunctionError => Bool

(Streams only) If the function returns an error, split the batch in two
and retry. The default value is false.


=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Streams only) An Amazon SQS queue or Amazon SNS topic destination for
discarded records.


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.


=head2 FunctionArn => Str

The ARN of the Lambda function.


=head2 FunctionResponseTypes => ArrayRef[Str|Undef]

(Streams only) A list of current response type enums applied to the
event source mapping.


=head2 LastModified => Str

The date that the event source mapping was last updated, or its state
changed.


=head2 LastProcessingResult => Str

The result of the last Lambda invocation of your Lambda function.


=head2 MaximumBatchingWindowInSeconds => Int

(Streams and SQS standard queues) The maximum amount of time to gather
records before invoking the function, in seconds. The default value is
zero.


=head2 MaximumRecordAgeInSeconds => Int

(Streams only) Discard records older than the specified age. The
default value is -1, which sets the maximum age to infinite. When the
value is set to infinite, Lambda never discards old records.


=head2 MaximumRetryAttempts => Int

(Streams only) Discard records after the specified number of retries.
The default value is -1, which sets the maximum number of retries to
infinite. When MaximumRetryAttempts is infinite, Lambda retries failed
records until the record expires in the event source.


=head2 ParallelizationFactor => Int

(Streams only) The number of batches to process from each shard
concurrently. The default value is 1.


=head2 Queues => ArrayRef[Str|Undef]

(MQ) The name of the Amazon MQ broker destination queue to consume.


=head2 SelfManagedEventSource => L<Paws::Lambda::SelfManagedEventSource>

The Self-Managed Apache Kafka cluster for your event source.


=head2 SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]

An array of the authentication protocol, or the VPC components to
secure your event source.


=head2 StartingPosition => Str

The position in a stream from which to start reading. Required for
Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams sources.
C<AT_TIMESTAMP> is only supported for Amazon Kinesis streams.

Valid values are: C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_TIMESTAMP">
=head2 StartingPositionTimestamp => Str

With C<StartingPosition> set to C<AT_TIMESTAMP>, the time from which to
start reading.


=head2 State => Str

The state of the event source mapping. It can be one of the following:
C<Creating>, C<Enabling>, C<Enabled>, C<Disabling>, C<Disabled>,
C<Updating>, or C<Deleting>.


=head2 StateTransitionReason => Str

Indicates whether the last change to the event source mapping was made
by a user, or by the Lambda service.


=head2 Topics => ArrayRef[Str|Undef]

The name of the Kafka topic.


=head2 TumblingWindowInSeconds => Int

(Streams only) The duration in seconds of a processing window. The
range is between 1 second up to 900 seconds.


=head2 UUID => Str

The identifier of the event source mapping.


=head2 _request_id => Str


=cut

