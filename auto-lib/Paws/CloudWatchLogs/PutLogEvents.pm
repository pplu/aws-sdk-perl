
package Paws::CloudWatchLogs::PutLogEvents;
  use Moose;
  has LogEvents => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::InputLogEvent]', traits => ['NameInRequest'], request_name => 'logEvents' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamName' , required => 1);
  has SequenceToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sequenceToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEvents - Arguments for method PutLogEvents on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLogEvents on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method PutLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLogEvents.

As an example:

  $service_obj->PutLogEvents(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> LogEvents => ArrayRef[L<Paws::CloudWatchLogs::InputLogEvent>]

  

=head2 B<REQUIRED> LogGroupName => Str

  The name of the log group to put log events to.

=head2 B<REQUIRED> LogStreamName => Str

  The name of the log stream to put log events to.

=head2 SequenceToken => Str

  A string token that must be obtained from the response of the previous
C<PutLogEvents> request.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLogEvents in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

