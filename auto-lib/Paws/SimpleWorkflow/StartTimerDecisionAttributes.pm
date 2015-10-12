package Paws::SimpleWorkflow::StartTimerDecisionAttributes;
  use Moose;
  has control => (is => 'ro', isa => 'Str');
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::StartTimerDecisionAttributes

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::StartTimerDecisionAttributes object:

  $service_obj->Method(Att1 => { control => $value, ..., timerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::StartTimerDecisionAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->control

=head1 ATTRIBUTES

=head2 control => Str

  I<Optional.> Data attached to the event that can be used by the decider
in subsequent workflow tasks.

=head2 B<REQUIRED> startToFireTimeout => Str

  B<Required.> The duration to wait before firing the timer.

The duration is specified in seconds; an integer greater than or equal
to 0.

=head2 B<REQUIRED> timerId => Str

  B<Required.> The unique ID of the timer.

The specified string must not start or end with whitespace. It must not
contain a C<:> (colon), C</> (slash), C<|> (vertical bar), or any
control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not
contain the literal string quotarnquot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

