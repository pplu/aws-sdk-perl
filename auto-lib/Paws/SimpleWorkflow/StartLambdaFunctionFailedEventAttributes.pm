package Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes;
  use Moose;
  has Cause => (is => 'ro', isa => 'Str', request_name => 'cause', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., ScheduledEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartLambdaFunctionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides the details of the C<StartLambdaFunctionFailed> event. It
isn't set for other event types.

=head1 ATTRIBUTES


=head2 Cause => Str

  The cause of the failure. To help diagnose issues, use this information
to trace back the chain of events leading up to this event.

If C<cause> is set to C<OPERATION_NOT_PERMITTED>, the decision failed
because the IAM role attached to the execution lacked sufficient
permissions. For details and example IAM policies, see Lambda Tasks
(http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html)
in the I<Amazon SWF Developer Guide>.


=head2 Message => Str

  A description that can help diagnose the cause of the fault.


=head2 ScheduledEventId => Int

  The ID of the C<ActivityTaskScheduled> event that was recorded when
this activity task was scheduled. To help diagnose issues, use this
information to trace back the chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

