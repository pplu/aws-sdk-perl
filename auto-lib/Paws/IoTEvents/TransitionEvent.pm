package Paws::IoTEvents::TransitionEvent;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Action]', request_name => 'actions', traits => ['NameInRequest']);
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest'], required => 1);
  has EventName => (is => 'ro', isa => 'Str', request_name => 'eventName', traits => ['NameInRequest'], required => 1);
  has NextState => (is => 'ro', isa => 'Str', request_name => 'nextState', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::TransitionEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::TransitionEvent object:

  $service_obj->Method(Att1 => { Actions => $value, ..., NextState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::TransitionEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Specifies the actions performed and the next state entered when a
C<condition> evaluates to TRUE.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::IoTEvents::Action>]

  The actions to be performed.


=head2 B<REQUIRED> Condition => Str

  [Required] A Boolean expression that when TRUE causes the actions to be
performed and the C<nextState> to be entered.


=head2 B<REQUIRED> EventName => Str

  The name of the transition event.


=head2 B<REQUIRED> NextState => Str

  The next state to enter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

