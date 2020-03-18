package Paws::IoTEvents::DetectorModel;
  use Moose;
  has DetectorModelConfiguration => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModelConfiguration', request_name => 'detectorModelConfiguration', traits => ['NameInRequest']);
  has DetectorModelDefinition => (is => 'ro', isa => 'Paws::IoTEvents::DetectorModelDefinition', request_name => 'detectorModelDefinition', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModel object:

  $service_obj->Method(Att1 => { DetectorModelConfiguration => $value, ..., DetectorModelDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModel object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorModelConfiguration

=head1 DESCRIPTION

Information about the detector model.

=head1 ATTRIBUTES


=head2 DetectorModelConfiguration => L<Paws::IoTEvents::DetectorModelConfiguration>

  Information about how the detector is configured.


=head2 DetectorModelDefinition => L<Paws::IoTEvents::DetectorModelDefinition>

  Information that defines how a detector operates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

