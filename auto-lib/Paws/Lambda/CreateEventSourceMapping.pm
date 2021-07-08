
package Paws::Lambda::CreateEventSourceMapping;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has FunctionResponseTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');
  has Queues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SelfManagedEventSource => (is => 'ro', isa => 'Paws::Lambda::SelfManagedEventSource');
  has SourceAccessConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::SourceAccessConfiguration]');
  has StartingPosition => (is => 'ro', isa => 'Str');
  has StartingPositionTimestamp => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TumblingWindowInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEventSourceMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateEventSourceMapping - Arguments for method CreateEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method CreateEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To create a mapping between an event source and an AWS Lambda function
    # The following example creates a mapping between an SQS queue and the
    # my-function Lambda function.
    my $EventSourceMappingConfiguration = $lambda->CreateEventSourceMapping(
      'BatchSize'      => 5,
      'EventSourceArn' => 'arn:aws:sqs:us-west-2:123456789012:my-queue',
      'FunctionName'   => 'my-function'
    );

    # Results:
    my $BatchSize      = $EventSourceMappingConfiguration->BatchSize;
    my $EventSourceArn = $EventSourceMappingConfiguration->EventSourceArn;
    my $FunctionArn    = $EventSourceMappingConfiguration->FunctionArn;
    my $LastModified   = $EventSourceMappingConfiguration->LastModified;
    my $State          = $EventSourceMappingConfiguration->State;
    my $StateTransitionReason =
      $EventSourceMappingConfiguration->StateTransitionReason;
    my $UUID = $EventSourceMappingConfiguration->UUID;

    # Returns a L<Paws::Lambda::EventSourceMappingConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateEventSourceMapping>

=head1 ATTRIBUTES


=head2 BatchSize => Int

The maximum number of items to retrieve in a single batch.

=over

=item *

B<Amazon Kinesis> - Default 100. Max 10,000.

=item *

B<Amazon DynamoDB Streams> - Default 100. Max 1,000.

=item *

B<Amazon Simple Queue Service> - Default 10. For standard queues the
max is 10,000. For FIFO queues the max is 10.

=item *

B<Amazon Managed Streaming for Apache Kafka> - Default 100. Max 10,000.

=item *

B<Self-Managed Apache Kafka> - Default 100. Max 10,000.

=back




=head2 BisectBatchOnFunctionError => Bool

(Streams only) If the function returns an error, split the batch in two
and retry.



=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Streams only) An Amazon SQS queue or Amazon SNS topic destination for
discarded records.



=head2 Enabled => Bool

If true, the event source mapping is active. Set to false to pause
polling and invocation.



=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.

=over

=item *

B<Amazon Kinesis> - The ARN of the data stream or a stream consumer.

=item *

B<Amazon DynamoDB Streams> - The ARN of the stream.

=item *

B<Amazon Simple Queue Service> - The ARN of the queue.

=item *

B<Amazon Managed Streaming for Apache Kafka> - The ARN of the cluster.

=back




=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Version or Alias ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it's limited to 64 characters in length.



=head2 FunctionResponseTypes => ArrayRef[Str|Undef]

(Streams only) A list of current response type enums applied to the
event source mapping.



=head2 MaximumBatchingWindowInSeconds => Int

(Streams and SQS standard queues) The maximum amount of time to gather
records before invoking the function, in seconds.



=head2 MaximumRecordAgeInSeconds => Int

(Streams only) Discard records older than the specified age. The
default value is infinite (-1).



=head2 MaximumRetryAttempts => Int

(Streams only) Discard records after the specified number of retries.
The default value is infinite (-1). When set to infinite (-1), failed
records will be retried until the record expires.



=head2 ParallelizationFactor => Int

(Streams only) The number of batches to process from each shard
concurrently.



=head2 Queues => ArrayRef[Str|Undef]

(MQ) The name of the Amazon MQ broker destination queue to consume.



=head2 SelfManagedEventSource => L<Paws::Lambda::SelfManagedEventSource>

The Self-Managed Apache Kafka cluster to send records.



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



=head2 Topics => ArrayRef[Str|Undef]

The name of the Kafka topic.



=head2 TumblingWindowInSeconds => Int

(Streams only) The duration in seconds of a processing window. The
range is between 1 second up to 900 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

