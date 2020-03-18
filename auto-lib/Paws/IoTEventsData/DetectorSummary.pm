package Paws::IoTEventsData::DetectorSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DetectorModelName => (is => 'ro', isa => 'Str', request_name => 'detectorModelName', traits => ['NameInRequest']);
  has DetectorModelVersion => (is => 'ro', isa => 'Str', request_name => 'detectorModelVersion', traits => ['NameInRequest']);
  has KeyValue => (is => 'ro', isa => 'Str', request_name => 'keyValue', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::IoTEventsData::DetectorStateSummary', request_name => 'state', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DetectorSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::DetectorSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::DetectorSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about the detector (instance).

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time the detector (instance) was created.


=head2 DetectorModelName => Str

  The name of the detector model that created this detector (instance).


=head2 DetectorModelVersion => Str

  The version of the detector model that created this detector
(instance).


=head2 KeyValue => Str

  The value of the key (identifying the device or system) that caused the
creation of this detector (instance).


=head2 LastUpdateTime => Str

  The time the detector (instance) was last updated.


=head2 State => L<Paws::IoTEventsData::DetectorStateSummary>

  The current state of the detector (instance).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

