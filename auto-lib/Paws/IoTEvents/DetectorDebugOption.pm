package Paws::IoTEvents::DetectorDebugOption;
  use Moose;
  has DetectorModelName => (is => 'ro', isa => 'Str', request_name => 'detectorModelName', traits => ['NameInRequest'], required => 1);
  has KeyValue => (is => 'ro', isa => 'Str', request_name => 'keyValue', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorDebugOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorDebugOption object:

  $service_obj->Method(Att1 => { DetectorModelName => $value, ..., KeyValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorDebugOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorModelName

=head1 DESCRIPTION

The detector model and the specific detectors (instances) for which the
logging level is given.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

  The name of the detector model.


=head2 KeyValue => Str

  The value of the input attribute key used to create the detector (the
instance of the detector model).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

