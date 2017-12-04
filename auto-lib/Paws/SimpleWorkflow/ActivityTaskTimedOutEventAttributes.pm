package Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes;
  use Moose;
  has Details => (is => 'ro', isa => 'Str', request_name => 'details', traits => ['NameInRequest']);
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest'], required => 1);
  has StartedEventId => (is => 'ro', isa => 'Int', request_name => 'startedEventId', traits => ['NameInRequest'], required => 1);
  has TimeoutType => (is => 'ro', isa => 'Str', request_name => 'timeoutType', traits => ['NameInRequest'], required => 1);
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

  $service_obj->Method(Att1 => { Details => $value, ..., TimeoutType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ActivityTaskTimedOutEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Provides the details of the C<ActivityTaskTimedOut> event.

=head1 ATTRIBUTES


=head2 Details => Str

  Contains the content of the C<details> parameter for the last call made
by the activity to C<RecordActivityTaskHeartbeat>.


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<ActivityTaskScheduled> event that was recorded when
this activity task was scheduled. This information can be useful for
diagnosing problems by tracing back the chain of events leading up to
this event.


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<ActivityTaskStarted> event recorded when this activity
task was started. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.


=head2 B<REQUIRED> TimeoutType => Str

  The type of the timeout that caused this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

