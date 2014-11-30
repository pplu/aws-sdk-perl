
package Paws::Lambda::EventSourceConfiguration {
  use Moose;
  with 'Paws::API::ResultParser';
  has BatchSize => (is => 'ro', isa => 'Int');
  has EventSource => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has IsActive => (is => 'ro', isa => 'Bool');
  has LastModified => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::Lambda::Map');
  has Role => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UUID => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::EventSourceConfiguration

=head1 ATTRIBUTES

=head2 BatchSize => Int

  

The largest number of records that AWS Lambda will POST in the
invocation request to your function.









=head2 EventSource => Str

  

The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the
source of events.









=head2 FunctionName => Str

  

The Lambda function to invoke when AWS Lambda detects an event on the
stream.









=head2 IsActive => Bool

  

Indicates whether the event source mapping is currently honored. Events
are only processes if IsActive is true.









=head2 LastModified => Str

  

The UTC time string indicating the last time the event mapping was
updated.









=head2 Parameters => Paws::Lambda::Map

  

The map (key-value pairs) defining the configuration for AWS Lambda to
use when reading the event source.









=head2 Role => Str

  

The ARN of the IAM role (invocation role) that AWS Lambda can assume to
read from the stream and invoke the function.









=head2 Status => Str

  

The description of the health of the event source mapping. Valid values
are: "PENDING", "OK", and "PROBLEM:I<message>". Initially this staus is
"PENDING". When AWS Lambda begins processing events, it changes the
status to "OK".









=head2 UUID => Str

  

The AWS Lambda assigned opaque identifier for the mapping.











=cut

