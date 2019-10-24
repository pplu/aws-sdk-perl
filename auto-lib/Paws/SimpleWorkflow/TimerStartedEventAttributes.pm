# Generated from default/object.tt
package Paws::SimpleWorkflow::TimerStartedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw//;
  has Control => (is => 'ro', isa => Str);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);
  has StartToFireTimeout => (is => 'ro', isa => Str, required => 1);
  has TimerId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartToFireTimeout' => {
                                         'type' => 'Str'
                                       },
               'Control' => {
                              'type' => 'Str'
                            },
               'TimerId' => {
                              'type' => 'Str'
                            },
               'DecisionTaskCompletedEventId' => {
                                                   'type' => 'Int'
                                                 }
             },
  'NameInRequest' => {
                       'StartToFireTimeout' => 'startToFireTimeout',
                       'Control' => 'control',
                       'TimerId' => 'timerId',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'StartToFireTimeout' => 1,
                    'TimerId' => 1,
                    'DecisionTaskCompletedEventId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::TimerStartedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::TimerStartedEventAttributes object:

  $service_obj->Method(Att1 => { Control => $value, ..., TimerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::TimerStartedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Control

=head1 DESCRIPTION

Provides the details of the C<TimerStarted> event.

=head1 ATTRIBUTES


=head2 Control => Str

  Data attached to the event that can be used by the decider in
subsequent workflow tasks.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<StartTimer> decision for this
activity task. This information can be useful for diagnosing problems
by tracing back the chain of events leading up to this event.


=head2 B<REQUIRED> StartToFireTimeout => Str

  The duration of time after which the timer fires.

The duration is specified in seconds, an integer greater than or equal
to C<0>.


=head2 B<REQUIRED> TimerId => Str

  The unique ID of the timer that was started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

