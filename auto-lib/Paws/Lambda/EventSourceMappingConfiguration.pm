
package Paws::Lambda::EventSourceMappingConfiguration;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has BisectBatchOnFunctionError => (is => 'ro', isa => 'Bool');
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastProcessingResult => (is => 'ro', isa => 'Str');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');
  has State => (is => 'ro', isa => 'Str');
  has StateTransitionReason => (is => 'ro', isa => 'Str');
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

(Streams) If the function returns an error, split the batch in two and
retry.


=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

(Streams) An Amazon SQS queue or Amazon SNS topic destination for
discarded records.


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.


=head2 FunctionArn => Str

The ARN of the Lambda function.


=head2 LastModified => Str

The date that the event source mapping was last updated, or its state
changed.


=head2 LastProcessingResult => Str

The result of the last AWS Lambda invocation of your Lambda function.


=head2 MaximumBatchingWindowInSeconds => Int

The maximum amount of time to gather records before invoking the
function, in seconds.


=head2 MaximumRecordAgeInSeconds => Int

(Streams) The maximum age of a record that Lambda sends to a function
for processing.


=head2 MaximumRetryAttempts => Int

(Streams) The maximum number of times to retry when the function
returns an error.


=head2 ParallelizationFactor => Int

(Streams) The number of batches to process from each shard
concurrently.


=head2 State => Str

The state of the event source mapping. It can be one of the following:
C<Creating>, C<Enabling>, C<Enabled>, C<Disabling>, C<Disabled>,
C<Updating>, or C<Deleting>.


=head2 StateTransitionReason => Str

Indicates whether the last change to the event source mapping was made
by a user, or by the Lambda service.


=head2 UUID => Str

The identifier of the event source mapping.


=head2 _request_id => Str


=cut

