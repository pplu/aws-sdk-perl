
package Paws::Lambda::AddEventSource {
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has EventSource => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Lambda::Map');
  has Role => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::EventSourceConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddEventSourceResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddEventSource - Arguments for method AddEventSource on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddEventSource on the 
AWS Lambda service. Use the attributes of this class
as arguments to method AddEventSource.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to AddEventSource.

As an example:

  $service_obj->AddEventSource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 BatchSize => Int

  

The largest number of records that AWS Lambda will give to your
function in a single event. The default is 100 records.










=head2 B<REQUIRED> EventSource => Str

  

The Amazon Resource Name (ARN) of the Amazon Kinesis stream that is the
event source. Any record added to this stream causes AWS Lambda to
invoke your Lambda function. AWS Lambda POSTs the Amazon Kinesis event,
containing records, to your Lambda function as JSON.










=head2 B<REQUIRED> FunctionName => Str

  

The Lambda function to invoke when AWS Lambda detects an event on the
stream.










=head2 Parameters => Paws::Lambda::Map

  

A map (key-value pairs) defining the configuration for AWS Lambda to
use when reading the event source. Currently, AWS Lambda supports only
the C<InitialPositionInStream> key. The valid values are:
"TRIM_HORIZON" and "LATEST". The default value is "TRIM_HORIZON". For
more information, go to ShardIteratorType in the Amazon Kinesis Service
API Reference.










=head2 B<REQUIRED> Role => Str

  

The ARN of the IAM role (invocation role) that AWS Lambda can assume to
read from the stream and invoke the function.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for AddEventSource in Paws::Lambda

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

