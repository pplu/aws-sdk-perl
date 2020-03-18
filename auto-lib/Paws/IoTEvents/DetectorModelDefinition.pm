package Paws::IoTEvents::DetectorModelDefinition;
  use Moose;
  has InitialStateName => (is => 'ro', isa => 'Str', request_name => 'initialStateName', traits => ['NameInRequest'], required => 1);
  has States => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::State]', request_name => 'states', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModelDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModelDefinition object:

  $service_obj->Method(Att1 => { InitialStateName => $value, ..., States => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModelDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->InitialStateName

=head1 DESCRIPTION

Information that defines how a detector operates.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InitialStateName => Str

  The state that is entered at the creation of each detector (instance).


=head2 B<REQUIRED> States => ArrayRef[L<Paws::IoTEvents::State>]

  Information about the states of the detector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

