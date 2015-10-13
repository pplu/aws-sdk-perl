package Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes;
  use Moose;
  has details => (is => 'ro', isa => 'Str');
  has scheduledEventId => (is => 'ro', isa => 'Int', required => 1);
  has startedEventId => (is => 'ro', isa => 'Int', required => 1);
  has timeoutType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes object:

  $service_obj->Method(Att1 => { details => $value, ..., timeoutType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->details

=head1 DESCRIPTION

Provides details of the C<ActivityTaskTimedOut> event.

=head1 ATTRIBUTES

=head2 details => Str

  Contains the content of the C<details> parameter for the last call made
by the activity to C<RecordActivityTaskHeartbeat>.

=head2 B<REQUIRED> scheduledEventId => Int

  The ID of the C<ActivityTaskScheduled> event that was recorded when
this activity task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.

=head2 B<REQUIRED> startedEventId => Int

  The ID of the C<ActivityTaskStarted> event recorded when this activity
task was started. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.

=head2 B<REQUIRED> timeoutType => Str

  The type of the timeout that caused this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

