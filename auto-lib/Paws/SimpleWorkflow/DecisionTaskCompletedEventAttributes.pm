package Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes;
  use Moose;
  has executionContext => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Int', required => 1);
  has startedEventId => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes object:

  $service_obj->Method(Att1 => { executionContext => $value, ..., startedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DecisionTaskCompletedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->executionContext

=head1 DESCRIPTION

Provides details of the C<DecisionTaskCompleted> event.

=head1 ATTRIBUTES

=head2 executionContext => Str

  User defined context for the workflow execution.

=head2 B<REQUIRED> scheduledEventId => Int

  The ID of the C<DecisionTaskScheduled> event that was recorded when
this decision task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.

=head2 B<REQUIRED> startedEventId => Int

  The ID of the C<DecisionTaskStarted> event recorded when this decision
task was started. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

