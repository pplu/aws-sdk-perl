package Paws::IoTEventsData::UpdateDetectorRequest;
  use Moose;
  has DetectorModelName => (is => 'ro', isa => 'Str', request_name => 'detectorModelName', traits => ['NameInRequest'], required => 1);
  has KeyValue => (is => 'ro', isa => 'Str', request_name => 'keyValue', traits => ['NameInRequest']);
  has MessageId => (is => 'ro', isa => 'Str', request_name => 'messageId', traits => ['NameInRequest'], required => 1);
  has State => (is => 'ro', isa => 'Paws::IoTEventsData::DetectorStateDefinition', request_name => 'state', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::UpdateDetectorRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::UpdateDetectorRequest object:

  $service_obj->Method(Att1 => { DetectorModelName => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::UpdateDetectorRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorModelName

=head1 DESCRIPTION

Information used to update the detector (instance).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

  The name of the detector model that created the detectors (instances).


=head2 KeyValue => Str

  The value of the input key attribute (identifying the device or system)
that caused the creation of this detector (instance).


=head2 B<REQUIRED> MessageId => Str

  The ID you wish to assign to the detector update "message". Each
"messageId" must be unique within each batch sent.


=head2 B<REQUIRED> State => L<Paws::IoTEventsData::DetectorStateDefinition>

  The new state, variable values, and timer settings of the detector
(instance).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

