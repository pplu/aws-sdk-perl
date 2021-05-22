
package Paws::Lambda::UpdateEventSourceMapping;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has Enabled => (is => 'ro', isa => 'Bool');
  has FunctionName => (is => 'ro', isa => 'Str');
  has FunctionResponseTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');
  has SourceAccessConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::SourceAccessConfiguration]');
  has TumblingWindowInSeconds => (is => 'ro', isa => 'Int');
  has UUID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UUID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEventSourceMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/event-source-mappings/{UUID}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceMappingConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateEventSourceMapping - Arguments for method UpdateEventSourceMapping on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEventSourceMapping on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateEventSourceMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEventSourceMapping.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update a Lambda function event source mapping
    # This operation updates a Lambda function event source mapping
    my $EventSourceMappingConfiguration = $lambda->UpdateEventSourceMapping(
      'BatchSize'    => 123,
      'Enabled'      => 1,
      'FunctionName' => 'myFunction',
      'UUID'         => '1234xCy789012'
    );

    # Results:
    my $BatchSize      = $EventSourceMappingConfiguration->BatchSize;
    my $EventSourceArn = $EventSourceMappingConfiguration->EventSourceArn;
    my $FunctionArn    = $EventSourceMappingConfiguration->FunctionArn;
    my $LastModified   = $EventSourceMappingConfiguration->LastModified;
    my $LastProcessingResult =
      $EventSourceMappingConfiguration->LastProcessingResult;
    my $State = $EventSourceMappingConfiguration->State;
    my $StateTransitionReason =
      $EventSourceMappingConfiguration->StateTransitionReason;
    my $UUID = $EventSourceMappingConfiguration->UUID;

    # Returns a L<Paws::Lambda::EventSourceMappingConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateEventSourceMapping>

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

(Streams) If the function returns an error, split the batch in two and
retry.



=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Streams) An Amazon SQS queue or Amazon SNS topic destination for
discarded records.



=head2 Enabled => Bool

If true, the event source mapping is active. Set to false to pause
polling and invocation.



=head2 FunctionName => Str

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

(Streams) A list of current response type enums applied to the event
source mapping.



=head2 MaximumBatchingWindowInSeconds => Int

(Streams and SQS standard queues) The maximum amount of time to gather
records before invoking the function, in seconds.



=head2 MaximumRecordAgeInSeconds => Int

(Streams) Discard records older than the specified age. The default
value is infinite (-1).



=head2 MaximumRetryAttempts => Int

(Streams) Discard records after the specified number of retries. The
default value is infinite (-1). When set to infinite (-1), failed
records will be retried until the record expires.



=head2 ParallelizationFactor => Int

(Streams) The number of batches to process from each shard
concurrently.



=head2 SourceAccessConfigurations => ArrayRef[L<Paws::Lambda::SourceAccessConfiguration>]

An array of the authentication protocol, or the VPC components to
secure your event source.



=head2 TumblingWindowInSeconds => Int

(Streams) The duration in seconds of a processing window. The range is
between 1 second up to 900 seconds.



=head2 B<REQUIRED> UUID => Str

The identifier of the event source mapping.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

