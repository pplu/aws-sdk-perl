package Paws::IoTEvents::Event;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::Action]', request_name => 'actions', traits => ['NameInRequest']);
  has Condition => (is => 'ro', isa => 'Str', request_name => 'condition', traits => ['NameInRequest']);
  has EventName => (is => 'ro', isa => 'Str', request_name => 'eventName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::Event object:

  $service_obj->Method(Att1 => { Actions => $value, ..., EventName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Specifies the C<actions> to be performed when the C<condition>
evaluates to TRUE.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::IoTEvents::Action>]

  The actions to be performed.


=head2 Condition => Str

  [Optional] The Boolean expression that when TRUE causes the C<actions>
to be performed. If not present, the actions are performed (=TRUE); if
the expression result is not a Boolean value the actions are NOT
performed (=FALSE).


=head2 B<REQUIRED> EventName => Str

  The name of the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

