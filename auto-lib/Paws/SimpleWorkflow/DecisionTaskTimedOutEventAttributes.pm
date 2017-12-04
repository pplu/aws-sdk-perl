package Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes;
  use Moose;
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest'], required => 1);
  has StartedEventId => (is => 'ro', isa => 'Int', request_name => 'startedEventId', traits => ['NameInRequest'], required => 1);
  has TimeoutType => (is => 'ro', isa => 'Str', request_name => 'timeoutType', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes object:

  $service_obj->Method(Att1 => { ScheduledEventId => $value, ..., TimeoutType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DecisionTaskTimedOutEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ScheduledEventId

=head1 DESCRIPTION

Provides the details of the C<DecisionTaskTimedOut> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<DecisionTaskScheduled> event that was recorded when
this decision task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<DecisionTaskStarted> event recorded when this decision
task was started. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.


=head2 B<REQUIRED> TimeoutType => Str

  The type of timeout that expired before the decision task could be
completed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

