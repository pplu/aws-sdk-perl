package Paws::IoTEvents::IotEventsAction;
  use Moose;
  has InputName => (is => 'ro', isa => 'Str', request_name => 'inputName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::IotEventsAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::IotEventsAction object:

  $service_obj->Method(Att1 => { InputName => $value, ..., InputName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::IotEventsAction object:

  $result = $service_obj->Method(...);
  $result->Att1->InputName

=head1 DESCRIPTION

Sends an AWS IoT Events input, passing in information about the
detector model instance and the event that triggered the action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

  The name of the AWS IoT Events input where the data is sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

