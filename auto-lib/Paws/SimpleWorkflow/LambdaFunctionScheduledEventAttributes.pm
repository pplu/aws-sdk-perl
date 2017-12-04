package Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes;
  use Moose;
  has Control => (is => 'ro', isa => 'Str', request_name => 'control', traits => ['NameInRequest']);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => 'Int', request_name => 'decisionTaskCompletedEventId', traits => ['NameInRequest'], required => 1);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has StartToCloseTimeout => (is => 'ro', isa => 'Str', request_name => 'startToCloseTimeout', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $service_obj->Method(Att1 => { Control => $value, ..., StartToCloseTimeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Provides the details of the C<LambdaFunctionScheduled> event. It isn't
set for other event types.

=head1 ATTRIBUTES


=head2 Control => Str

  Data attached to the event that the decider can use in subsequent
workflow tasks. This data isn't sent to the Lambda task.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<LambdaFunctionCompleted> event corresponding to the
decision that resulted in scheduling this activity task. To help
diagnose issues, use this information to trace back the chain of events
leading up to this event.


=head2 B<REQUIRED> Id => Str

  The unique ID of the Lambda task.


=head2 Input => Str

  The input provided to the Lambda task.


=head2 B<REQUIRED> Name => Str

  The name of the Lambda function.


=head2 StartToCloseTimeout => Str

  The maximum amount of time a worker can take to process the Lambda
task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

