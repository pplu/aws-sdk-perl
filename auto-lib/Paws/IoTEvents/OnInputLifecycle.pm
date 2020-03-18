package Paws::IoTEvents::OnInputLifecycle;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Event]', request_name => 'events', traits => ['NameInRequest']);
  has TransitionEvents => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::TransitionEvent]', request_name => 'transitionEvents', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::OnInputLifecycle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::OnInputLifecycle object:

  $service_obj->Method(Att1 => { Events => $value, ..., TransitionEvents => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::OnInputLifecycle object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

Specifies the actions performed when the C<"condition"> evaluates to
TRUE.

=head1 ATTRIBUTES


=head2 Events => ArrayRef[L<Paws::IoTEvents::Event>]

  Specifies the actions performed when the C<"condition"> evaluates to
TRUE.


=head2 TransitionEvents => ArrayRef[L<Paws::IoTEvents::TransitionEvent>]

  Specifies the actions performed, and the next state entered, when a
C<"condition"> evaluates to TRUE.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

