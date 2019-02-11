
package Paws::Lambda::CreateEventSourceMapping;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has EventSourceArn => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has StartingPosition => (is => 'ro', isa => 'Str');
  has StartingPositionTimestamp => (is => 'ro', isa => 'Str');

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
    my $EventSourceMappingConfiguration = $lambda->CreateEventSourceMapping(
      EventSourceArn            => 'MyArn',
      FunctionName              => 'MyFunctionName',
      BatchSize                 => 1,                        # OPTIONAL
      Enabled                   => 1,                        # OPTIONAL
      StartingPosition          => 'TRIM_HORIZON',           # OPTIONAL
      StartingPositionTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
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

B<Amazon Simple Queue Service> - Default 10. Max 10.

=back




=head2 Enabled => Bool

Disables the event source mapping to pause polling and invocation.



=head2 B<REQUIRED> EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.

=over

=item *

B<Amazon Kinesis> - The ARN of the data stream or a stream consumer.

=item *

B<Amazon DynamoDB Streams> - The ARN of the stream.

=item *

B<Amazon Simple Queue Service> - The ARN of the queue.

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



=head2 StartingPosition => Str

The position in a stream from which to start reading. Required for
Amazon Kinesis and Amazon DynamoDB Streams sources. C<AT_TIMESTAMP> is
only supported for Amazon Kinesis streams.

Valid values are: C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_TIMESTAMP">

=head2 StartingPositionTimestamp => Str

With C<StartingPosition> set to C<AT_TIMESTAMP>, the time from which to
start reading.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSourceMapping in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

