package Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes;
  use Moose;
  has ScheduledEventId => (is => 'ro', isa => 'Int', request_name => 'scheduledEventId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes object:

  $service_obj->Method(Att1 => { ScheduledEventId => $value, ..., ScheduledEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionStartedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ScheduledEventId

=head1 DESCRIPTION

Provides the details of the C<LambdaFunctionStarted> event. It isn't
set for other event types.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<LambdaFunctionScheduled> event that was recorded when
this activity task was scheduled. To help diagnose issues, use this
information to trace back the chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

